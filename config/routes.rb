Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

  get '/manage', to: 'static_pages#manage', as: 'manage'

  resources :projects, param: :slug, only: %i[show update destroy]
  resources :projects, only: :create
end
