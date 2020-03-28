Rails.application.routes.draw do
  devise_for :users
  get 'dated/card'=>"dated#card"
  get 'dated/plusbuttom'=>"dated#plusbuttom"
  get 'dated/products_submit'=>"dated#products_submit"
  get 'dated/details'=>"dated#details"
  get 'dated/foreachproducts'=>"dated#foreachproducts"
  # post 'products/create' => "products#create"
  # get 'products/new'=>"products#new"
  post 'create' => "dated#create"
  get 'new'=>"dated#new"

  
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'tops#index'
  resources :users, only: [:edit, :update]
  # resources :machines, only: [:new, :create, :edit, :update] 
end
