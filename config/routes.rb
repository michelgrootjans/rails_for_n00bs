Wow::Application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  root 'characters#index'

  resources :characters, only: [:index, :show, :new, :create]
end
