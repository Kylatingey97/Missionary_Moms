Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_up: 'register' }
  resources :blogs do 
    member do
      get :toggle_status
    end
  end
  resources :products, except: [:show]
  get 'product/:id', to: 'products#show', as: 'product_show'

  get 'about', to: 'pages#about'
  get 'checkout', to: 'pages#checkout'

  root to: 'pages#home'
end
