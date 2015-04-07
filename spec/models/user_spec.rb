# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string(255)      default(""), not null
#  encrypted_password     :string(255)      default(""), not null
#  reset_password_token   :string(255)
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0)
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string(255)
#  last_sign_in_ip        :string(255)
#  created_at             :datetime
#  updated_at             :datetime
#  role                   :string(255)
#  status                 :string(255)      default("pending")
#  avatar                 :string(255)
#  first_name             :string(255)
#  middle_name            :string(255)
#  last_name              :string(255)
#  title                  :string(255)
#  phone                  :string(255)
#  street                 :string(255)
#  zip_code               :integer
#  city                   :string(255)
#  country                :string(255)
#  state                  :string(255)
#  short_bio              :text
#  facebook_link          :string(255)
#  twitter_link           :string(255)
#  google_plus_link       :string(255)
#  linkedin_link          :string(255)
#  social_avatar_url      :string(255)
#  latitude               :float
#  longitude              :float
#  facebook_avatar        :string(255)
#  google_plus_avatar     :string(255)
#  linkedin_avatar        :string(255)
#

require 'spec_helper'

describe User do
  it { should have_many(:authentications) }
  it { should validate_presence_of(:email) }
end

describe User do
  describe '#role?' do
    describe '#admin' do
      let(:admin) { create(:admin) }

      it 'should be admin' do
        expect(admin.role?(:admin)).to  be_true
        expect(admin.role?('admin')).to be_true
      end
    end

    context '#user' do
      let(:user) { create(:user) }

      it 'should be normal user' do
        expect(user.role?(:admin)).to be_false
      end
    end
  end
end

describe User do
  context '#admin' do
    let(:admin) { create(:admin) }

    subject { Ability.new(admin) }

    it { should be_able_to(:manage, :all) }
  end
end

describe User do
  describe '#find_for_facebook' do
    context 'with valid auth' do
      before do
        @auth = double('auth', provider: 'facebook', uid: 'facebook-id', extra: { 'raw_info' => { 'name' => 'John Watson' } }, info: { 'email' => 'john.watson@example.com', 'urls' => { 'Facebook' => 'http://facebook.com' } })
        @user = User.find_for_facebook(nil, @auth)
      end

      it 'should create a new user by facebook auth' do
        expect(User.count).to  eq(1)
        expect(@user.name).to  eq("John Watson")
        expect(@user.email).to eq("john.watson@example.com")
        expect(@user.facebook_link).to eq("http://facebook.com")
      end

      it 'should create facebook authentication' do
        authentications = @user.reload.authentications
        expect(authentications).to have(1).item
        expect(authentications[0].provider).to eq('facebook')
        expect(authentications[0].uid).to      eq('facebook-id')
      end
    end

    context 'with invalid auth' do
      before do
        @auth = double('auth', provider: 'facebook', uid: 'uid', extra: { 'raw_info' => { 'name' => '' } }, info: { 'email' => '', 'urls' => { 'Facebook' => 'http://facebook.com' } })
        @user = User.find_for_facebook(nil, @auth)
      end

      it 'should not create a new user' do
        expect(User.count).to eq(0)
      end

      it 'should not create a authentication' do
        expect(Authentication.count).to eq(0)
      end
    end
  end

  describe '#find_for_google' do
    context 'with valid auth' do
      before do
        @auth = double('auth', provider: 'google', uid: 'google-id', info: { 'email' => 'john.watson@example.com', 'name' => 'John Watson', 'urls' => { 'Google' => 'http://google.com/' } })
        @user = User.find_for_google(nil, @auth)
      end

      it 'should create a new user by google auth' do
        expect(User.count).to  eq(1)
        expect(@user.name).to  eq("John Watson")
        expect(@user.email).to eq("john.watson@example.com")
        expect(@user.google_plus_link).to eq("http://google.com/")
      end

      it 'should create google authentication' do
        authentications = @user.reload.authentications
        expect(authentications).to have(1).item
        expect(authentications[0].provider).to eq('google')
        expect(authentications[0].uid).to      eq('google-id')
      end
    end

    context 'with invalid auth' do
      before do
        @auth = double('auth', provider: 'google', uid: 'uid', info: { 'email' => '', 'name' => 'John Watson', 'urls' => { 'Google' => 'http://google.com/' } })
        @user = User.find_for_google(nil, @auth)
      end

      it 'should not create a new user' do
        expect(User.count).to eq(0)
      end

      it 'should not create a authentication' do
        expect(Authentication.count).to eq(0)
      end
    end
  end

  describe '#find_for_linkedin' do
    context 'with valid auth' do
      before do
        @auth = double('auth', provider: 'linkedin', uid: 'linkedin-id', info: { 'urls' => { 'public_profile' => 'http://linkedin.com' }, 'email' => 'john.watson@example.com', 'name' => 'John Watson' })
        @user = User.find_for_linkedin(nil, @auth)
      end

      it 'should create a new user by linkedin auth' do
        expect(User.count).to  eq(1)
        expect(@user.name).to  eq("John Watson")
        expect(@user.email).to eq("john.watson@example.com")
        expect(@user.linkedin_link).to eq("http://linkedin.com")
      end

      it 'should create linkedin authentication' do
        authentications = @user.reload.authentications
        expect(authentications).to have(1).item
        expect(authentications[0].provider).to eq('linkedin')
        expect(authentications[0].uid).to      eq('linkedin-id')
      end
    end

    context 'with invalid auth' do
      before do
        @auth = double('auth', provider: 'linkedin', uid: 'uid', info: { 'email' => '', 'name' => 'John Watson', 'urls' => { 'public_profile' => 'http://public.com' } })
        @user = User.find_for_linkedin(nil, @auth)
      end

      it 'should not create a new user' do
        expect(User.count).to eq(0)
      end

      it 'should not create a authentication' do
        expect(Authentication.count).to eq(0)
      end
    end
  end

  context 'with multiple authentication methods' do
    let!(:kate_google)   { create(:authentication, email: 'kate@example.com', provider: 'google', uid: 'google-id') }
    let!(:kate_facebook) { create(:authentication, email: 'kate@example.com', provider: 'facebook', uid: 'facebook-id') }
    let!(:kate_linkedin) { create(:authentication, email: 'kate@example.com', provider: 'linkedin', uid: 'linkedin-id') }
    let!(:google)   { double('auth', provider: 'google', uid: 'google-id', info: { 'email' => 'kate@example.com', 'urls' => { 'Google' => 'http://google.com' } }) }
    let!(:facebook) { double('auth', provider: 'facebook', uid: 'facebook-id', info: { 'email' => 'kate@example.com', 'urls' => { 'Facebook' => 'http://facebook.com' } }, extra: { 'raw_info' => { 'name' => 'John Watson' } }) }
    let!(:linkedin) { double('auth', provider: 'linkedin', uid: 'linkedin-id', info: { 'email' => 'kate@example.com', 'urls' => { 'public_profile' => 'http://linkedin.com' } }) }

    it 'should be possible to login using email and provider details' do
      user = User.find_for_google(nil, google)
      expect(user).to eq(kate_google.user)
      user = User.find_for_facebook(nil, facebook)
      expect(user).to eq(kate_facebook.user)
      user = User.find_for_linkedin(nil, linkedin)
      expect(user).to eq(kate_linkedin.user)
    end

    it 'should pick up urls of the auth websites' do
      user = User.find_for_google(nil, google)
      expect(user.google_plus_link).to eq('http://google.com')
      user = User.find_for_facebook(nil, facebook)
      expect(user.facebook_link).to eq('http://facebook.com')
      user = User.find_for_linkedin(nil, linkedin)
      expect(user.linkedin_link).to eq('http://linkedin.com')
    end
  end
end

describe User do
  describe '.name' do
    let(:user) { build(:user, first_name: "James", middle_name: "Petrovich", last_name: "Bond") }

    it 'should return full name based on first, middle, last names' do
      expect(user.name).to eq("James Bond Petrovich")
    end
  end

  describe '.name=(value)' do
    let(:user) { build(:user) }

    it 'should not assign anything in case of noname' do
      user.name = nil
      expect(user.first_name).not_to be
      expect(user.last_name).not_to be
      expect(user.middle_name).not_to be
    end

    it 'should assign first, middle, last names using passed full name' do
      user.name = "Kate"
      expect(user.first_name).to eq("Kate")
      expect(user.last_name).not_to be
      expect(user.middle_name).not_to be

      user.name = "Kate Watson"
      expect(user.first_name).to eq("Kate")
      expect(user.last_name).to eq("Watson")
      expect(user.middle_name).not_to be

      user.name = "Kate Watson Petrovna"
      expect(user.first_name).to eq("Kate")
      expect(user.last_name).to eq("Watson")
      expect(user.middle_name).to eq("Petrovna")
    end
  end
end

