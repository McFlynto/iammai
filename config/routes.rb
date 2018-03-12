Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

  get '/manage', to: 'static_pages#manage', as: 'manage'

  resources :projects, param: :slug, only: :show
end
