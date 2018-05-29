Rails.application.routes.draw do
  devise_for :users
  get 'home/index'
  root to: "home#index"

  resources :vista
  get 'vista/index'
  get 'vista/show'
  get 'vista/create'
  get 'vista/edit'
  get 'vista/update'
  get 'vista/destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
