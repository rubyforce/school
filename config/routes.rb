Greenarea::Application.routes.draw do
  namespace :admin do
    resources :student_users
    resources :employees
  end

  devise_for :users, :controllers => { :omniauth_callbacks => :omniauth_callbacks, :passwords => :"users/passwords", :sessions => :"users/sessions" }

  # You can have the root of your site routed with "root"
  root 'home#index'

  resources :users, only: :show

  mount GetVersion::Web => '/'

  authenticate :user, lambda { |user| user.role?('admin') } do
    mount PgHero::Engine => '/db'
  end
end
