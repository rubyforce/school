Greenarea::Application.routes.draw do
  namespace :admin do
    resources :students
    resources :employees
    resources :cash_managements
    resources :paid_types
    resources :midday_managements
    resources :sections
    resources :pay_bands
    resources :admissions
    resources :religions
    resources :castes
  end

  devise_for :users

  # You can have the root of your site routed with "root"
  devise_scope :user do
    authenticated :user do
      root 'home#index', as: :authenticated_root
    end

    unauthenticated do
      root 'devise/sessions#new', as: :unauthenticated_root
    end
  end

  resources :users, only: :show

  authenticate :user, lambda { |user| user.role?('admin') } do
    mount PgHero::Engine => '/db'
  end
end
