Rails.application.routes.draw do
  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  get 'about', to: 'static_pages#about'

  get 'contact', to: 'static_pages#contact'

  resources :users, only: [:new, :create]
  
end
