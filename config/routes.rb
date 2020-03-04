Rails.application.routes.draw do
  devise_for :users
  get 'products/card'=>"products#card"
  get 'products/plusbuttom'=>"products#plusbuttom"
  get 'products/products_submit'=>"products#products_submit"
  get 'products/details'=>"products#details"
  get 'products/foreachproducts'=>"products#foreachproducts"
  post 'create' => "products#create"
  get 'products/new'=>"products#new"

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tops#index'
  resources :users, only: [:edit, :update]
end
