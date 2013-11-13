class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :trackable, :validatable,
    :omniauthable, :omniauth_providers => [:facebook, :google_oauth2, :linkedin]

  attr_accessor :current_password

  validates :email, :status, presence: true

  def role?(r)
    self.role.to_s == r.to_s
  end

  include SocialAuthentication
  include Addressable
  include Nameable

  include PublicActivity::Model
  tracked skip_defaults: true
end

