Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  root 'recipes#index', as: "all_recipes"
  get "/recipes/:id", to: "recipes#show", as: "recipes_show"
  delete '/recipes/:id/destroy', to: 'recipes#destroy', as: "destroy_recipes"
end
