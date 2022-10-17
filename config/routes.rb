Rails.application.routes.draw do
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks'}
  resources :users, only: [:index, :show, :edit, :update]
  resources :articles
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'site#home'

  # redirect to route on not found error
  # temporary solution for staging
  # TODO: remove this after demo is done
  match '*unmatched', to: redirect(''), via: :get
end
