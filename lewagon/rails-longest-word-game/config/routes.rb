# frozen_string_literal: true

Rails.application.routes.draw do
  get 'new', to: 'games#new', as: :new # 'games/new'
  get 'score', to: 'games#score', as: :score # 'games/score'
  post 'score', to: 'games#score'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
