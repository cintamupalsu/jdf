Rails.application.routes.draw do
  get 'dashboard/index'
  devise_for :users
  get 'public_pages/home'
  root 'public_pages#home'

  #publics routes

  get 'facility', to: 'public_pages#facility'
  get 'market', to: 'public_pages#market'
  get 'dahwa', to: 'public_pages#dahwa'
  get 'quiz', to: 'public_pages#quiz'
  get 'calendar', to: 'public_pages#calendar'
  get 'halal', to: 'public_pages#halal'


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
