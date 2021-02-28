Rails.application.routes.draw do
  root to: 'reizoukos#index'
  devise_for :users
end 
