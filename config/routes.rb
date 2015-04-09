Greenarea::Application.routes.draw do
  namespace :admin do
    resources :student_users
    resources :employees
  end

  devise_for :users, :controllers => { :omniauth_callbacks => :omniauth_callbacks, :registrations => :"users/registrations", :passwords => :"users/passwords", :sessions => :"users/sessions" }

  # You can have the root of your site routed with "root"
  root 'home#index'

  resources :users, only: :show

  devise_scope :user do
    put '/users/upload_images', to: 'users/registrations#upload_images'
  end

  mount GetVersion::Web => '/'

  authenticate :user, lambda { |user| user.role?('admin') } do
    mount PgHero::Engine => '/db'
  end
end
