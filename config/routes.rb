Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :bikes do
    resources :rentals, only: :create
  end

  resources :rentals, only: :index

  namespace :owner do
    resources :rentals, only: :index do
      member do
        patch :accept
        patch :refuse
      end
    end
  end
end
