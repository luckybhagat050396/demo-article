Rails.application.routes.draw do
  # devise_for :users, controllers: { sessions: 'users/registrations' }
  devise_scope :user do
    root to: 'users/registrations#new'
    get '/user/:id', to: 'users/registrations#show', as: :users_show
    # get '/user/:id', to: 'users/registrations#create', as: :user_create
  end
  devise_for :users

  get '/pages' , to: 'pages#home'
  resources :articles do
    resources :comments
  end
end
