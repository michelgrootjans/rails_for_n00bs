WarOfWorldcraft::Application.routes.draw do
  # root :to => 'welcome#index'

  get "/characters", controller: "characters", action: "index"
  get "/characters/new", controller: "characters", action: "new"
  get "/characters/:id", controller: "characters", action: "show"
  post "/characters", controller: "characters", action: "create"
end
