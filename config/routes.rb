SampleApp::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions,      only: [:new, :create, :destroy]
  resources :microposts,    only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]
  root to: 'static_pages#home'
  match '/signup',  to: 'users#new',            via: 'get'
  match '/signin',  to: 'sessions#new',         via: 'get'
  match '/signout', to: 'sessions#destroy',     via: 'delete'
  match '/help',    to: 'static_pages#help',    via: 'get'
  match '/request',    to: 'static_pages#request',    via: 'get' 
  match '/about',   to: 'static_pages#about',   via: 'get'
  match '/contact', to: 'static_pages#contact', via: 'get'
  match '/work', to: 'static_pages#work', via: 'get'
  match '/work2', to: 'static_pages#work2', via: 'get'
  match '/work3', to: 'static_pages#work3', via: 'get'
  match '/work4', to: 'static_pages#work4', via: 'get'
  match '/work5', to: 'static_pages#work5', via: 'get'
end
