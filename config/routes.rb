Rails.application.routes.draw do

  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  resources :pictures
  devise_for :users, controllers: { omniauth_callbacks: 'users/omniauth_callbacks' }
  resources :users, only: [:index, :show, :edit, :update]
  resources :articles
  resources :site_content, only: [:edit, :update]
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  get '/orders', to: 'orders#index', as: :orders
  get '/orders/new', to: 'orders#new', as: :new_order
  post '/orders', to: 'orders#create', as: :create_order

  # Defines the root path route ("/")
  root 'site#home'
  get '/faq', to: 'site#faq'
  get '/join-us', to: 'site#join', as: :join


  get 'enquiry/set', as: :set_enquiry
  get 'enquiry/unset', as: :unset_enquiry
  get 'enquiry/export', as: :export_enquiry
  # redirect to route on not found error
  # temporary solution for staging

end
