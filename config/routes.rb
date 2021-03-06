Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'static_pages#home'

  get '/about', to: 'static_pages#about', as: 'about'
  get '/imprint', to: 'static_pages#imprint', as: 'imprint'

  get '/manage', to: 'static_pages#manage', as: 'manage'
  get '/manage/new', to: 'projects#new'
  get '/manage/edit/:slug', to: 'projects#edit'

  post '/manage/edit/:slug/delete_image/:id', to: 'projects#delete_image'

  resources :projects, param: :slug, only: %i[show create update destroy]
end
