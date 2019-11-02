Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :institucional, only: [:index]
  resources :calidad, only: [:index]
  resources :contacto, only: [:index]
  resources :medio_ambiente, only: [:index]
  resources :que_hacemos, only: [:index]
  resources :trabaja_con_nosotros, only: [:index]

end
