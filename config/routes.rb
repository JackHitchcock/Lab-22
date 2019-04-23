Rails.application.routes.draw do
get 'auth/:provider/callback', to: 'sessions#create'
get 'auth/failure', to: redirect('/')
get 'signout', to: 'session#destroy'

resources :sessions, only: [:create, :destroy]
get 'welcome/Index'

resources :articles do
    resources :comments
  end
  
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end