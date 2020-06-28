Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "dictionary", to: "pages#dictionary", as: "dictionary"
  get "create_words", to: "pages#create_words", as: "create_words"

  get 'institucional', to: 'pages#institucional'
  get 'calidad', to: 'pages#calidad'
  get 'contacto', to: 'pages#contacto'
  get 'medio_ambiente', to: 'pages#medio_ambiente'
  get 'trabaja_con_nosotros', to: 'pages#trabaja_con_nosotros'
  get 'que_hacemos', to: 'pages#que_hacemos'

end
