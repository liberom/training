Rails.application.routes.draw do
  root to: 'pages#home'

  get "meus-produtos", to: "pages#my_products"
  get "sobre", to: "pages#sobre"
  get "termos-de-uso", to: "pages#termos_uso"
  get "fale-conosco", to: "pages#fale_conosco"

  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :products do
    resources :bookings
  end
end
