RailsForN00bs::Application.routes.draw do
  root :to => 'zombies#index'

  resources :zombies, only: [:index, :show]
end
