Rails.application.routes.draw do

  match "/api", to: "api#execute", via: [:get, :post, :options]

  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/api"
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
