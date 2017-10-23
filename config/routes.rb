Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  resources :users, only: [:create, :destroy, :index, :show, :update]
  resources :artworks, only: [:create, :destroy, :index, :show, :update]

  # get 'users', to: 'users#index', as: 'users'
  # get 'users/:id', to: 'users#show', as: 'user' 
  # post 'users', to: 'users#create'
  # delete 'users/:id', to: 'users#destroy'
  # put 'users/:id', to: 'users#update'
  # patch 'users/:id', to: 'users#update'
  # get 'users/:id/edit', to: 'users#edit', as: 'edit_user'
  # get 'users/new', to: 'users#new', as: 'new_user'
end
