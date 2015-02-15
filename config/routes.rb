Rails.application.routes.draw do
  
  devise_for :users
  root to: "motors#index"
  resources :motors
end
