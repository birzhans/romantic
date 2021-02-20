Rails.application.routes.draw do

  root 'meets#index'


  resources :meets, except: %w[new edit update destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
