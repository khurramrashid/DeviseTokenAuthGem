Rails.application.routes.draw do

  mount_devise_token_auth_for 'User', at: 'auth'
  root "profile#show"
  resources :profile

end
