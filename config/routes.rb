WarOfWorldcraft::Application.routes.draw do
  # root :to => 'welcome#index'

  get "/characters", controller: "characters", action: "index"
end
