Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"
  resources :users do
    resources :recipes
    resources :inventorys
  end
  resources :recipes
  resources :inventorys
  resources :foods

end
