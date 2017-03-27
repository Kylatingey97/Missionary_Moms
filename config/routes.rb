Rails.application.routes.draw do
  resources :blogs
  resources :products, except: [:show]
  get 'product/:id', to: 'products#show', as: 'product_show'

  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  root to: 'pages#home'
end
