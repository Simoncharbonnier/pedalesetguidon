Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes do
    member do
      resources :rentals, only: :create
    end
  end

  resources :rentals, only: :index

  namespace :owner do
    resources :rentals, only: :index do
      member do
        patch :accept
        patch :decline
      end
    end
  end
end
