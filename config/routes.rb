Rails.application.routes.draw do
    
  get 'messages/new'

  devise_for :admins
  resources :blogs

  root 'static_pages#home'

  resources :messages, only: [:new, :create]

  get 'static_pages/about'

  get 'static_pages/help'

  get 'static_pages/contact'

  get 'static_pages/ourteam'

  get 'static_pages/about'


end
