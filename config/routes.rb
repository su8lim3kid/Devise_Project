Rails.application.routes.draw do
root "managers#index"


  devise_for :users
  resources :managers

  
end
