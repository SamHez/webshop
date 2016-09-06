Rails.application.routes.draw do
    
  devise_for :admins
  resources :blogs
  root 'static_pages#home'
  
#  resources :static_pages    
#  get 'static_pages/home'
  get 'static_pages/about'

  get 'static_pages/help'

  get 'static_pages/contact'

  get 'static_pages/ourteam'

  get 'static_pages/about'


end
