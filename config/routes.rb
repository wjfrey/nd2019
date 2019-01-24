Rails.application.routes.draw do
  root to: 'presents#index'

  resources :presents, only: [:create, :destroy]

  post 'presents/:id/reserve', to: 'presents#reserve', as: 'reserve'

  get '/noras-and-davids-secret-path', to: 'presents#new', as: 'secret'
end
