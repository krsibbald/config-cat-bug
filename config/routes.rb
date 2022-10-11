Rails.application.routes.draw do
  resources :users do
    post :recreate, on: :collection
    get :recreate, on: :collection
  end
  root 'users#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
