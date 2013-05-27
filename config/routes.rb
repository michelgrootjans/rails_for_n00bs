RailsForN00bs::Application.routes.draw do
  root :to => 'zombies#index'

  get "/zombies" => "zombies#index"
  get "/zombies/:id" => "zombies#show"
end
