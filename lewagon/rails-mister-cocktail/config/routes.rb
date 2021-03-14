Rails.application.routes.draw do
  get 'cocktails/home'
  root to: 'cocktails#index'
  # resources :ingredients
  resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    resources :doses, only: [:new, :create]
    resources :reviews, only: [:new, :create]
  end

  resources :doses, only: [:destroy]
end


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

