Rails.application.routes.draw do
  get 'sessions/new'

  root 'static_pages#home'

  get 'about', to: 'static_pages#about'
  get 'signup', to: 'users#new'

  resources :users

  get    'login'   => 'sessions#new'
  post   'login'   => 'sessions#create'
  delete 'logout'  => 'sessions#destroy'

end