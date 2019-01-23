Rails.application.routes.draw do
  root to: 'presents#index'

  post 'presents/:id/reserve', to: 'presents#reserve', as: 'reserve'
end
