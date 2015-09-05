Rails.application.routes.draw do
  devise_for :users
  root to: 'articles#index'
  resources :articles do
  	resources :comments
  end
  resources :tags
<<<<<<< HEAD
  resources :authors

  resources :author_sessions, only: [ :new, :create, :destroy ]

  get 'login'  => 'author_sessions#new'
  get 'logout' => 'author_sessions#destroy'
=======
>>>>>>> addDevise
end