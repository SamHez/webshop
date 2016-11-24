Rails.application.routes.draw do
  get 'homes/show'

  #this is a much better way of serving static pages through the show controller
  get 'static_pages/*page' => 'static_pages#show'
  devise_for :admins
  resources :blogs

   # resources :homes, only: [:show]
  # root to: "homes#show"

  resources :messages, only: [:new, :create]
  get 'messages/new'

  resources :newsletters


  root 'static_pages#show', page: 'home'

  get 'public/*page' =>'static_pages#download'
end
