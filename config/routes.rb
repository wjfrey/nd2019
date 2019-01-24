Rails.application.routes.draw do
  root to: 'presents#index'

  resources :presents, only: [:create, :destroy]

  post 'presents/:id/reserve', to: 'presents#reserve', as: 'reserve'

  post 'presents/:id/unreserve', to: 'presents#unreserve', as: 'unreserve'

  get '/noras-and-davids-secret-path', to: 'presents#new', as: 'secret'

  get 'presents/reservation-exists/:id', to: 'presents#reservation_exists', as: 'reservation_exists'
end
