Wow::Application.routes.draw do
  # root 'welcome#index'

  get "characters" => "characters#index"
  post "characters" => "characters#create"
  get "characters/new" => "characters#new"
  get "characters/:id" => "characters#show"
end
