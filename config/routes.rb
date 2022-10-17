Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'site#home'

  # redirect to route on not found error
  # temporary solution for staging
  # TODO: remove this after demo is done
  match '*unmatched', to: redirect(''), via: :get
end
