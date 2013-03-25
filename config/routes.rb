WarOfWorldcraft::Application.routes.draw do
  root :to => 'characters#index'

  resources :characters, only: [:index, :show, :new, :create]
end
