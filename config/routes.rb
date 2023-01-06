Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  resources :users do
    resources :recipes
    resources :inventorys
  end

  resources :recipes, :foods do
    resources :recipe_foods
  end

  resources :foods, :inventorys do
    resources :inventory_foods
  end

  resources :recipes
  resources :inventorys
  resources :foods
  resources :inventory_foods
  resources :recipe_foods

end
