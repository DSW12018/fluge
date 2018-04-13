Rails.application.routes.draw do
  post "/api", to: "api#execute"

  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/api"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
