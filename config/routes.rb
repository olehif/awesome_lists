Rails.application.routes.draw do
  root  to: 'technologies#index'

  resources :projects, only: [:create]

  get '/new', to: 'projects#new'
  get '/:name', to: 'technologies#show', as: :technology
  get '/:technology/:name', to: 'categories#show', as: :category
end
