Rails.application.routes.draw do
  resources :books
  resources :authors
  resources :publishers
end
