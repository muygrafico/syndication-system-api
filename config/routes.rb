Rails.application.routes.draw do
  resources :purchases
  # resources :products
  resources :products do
    resources :purchases
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
