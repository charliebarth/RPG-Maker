Rails.application.routes.draw do
  resources :inventory_items
  resources :items
  resources :inventories
  resources :users
  resources :character_perks
  resources :perks
  resources :characters
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
