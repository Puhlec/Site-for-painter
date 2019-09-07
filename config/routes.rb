Rails.application.routes.draw do
  root 'contexts#index'
  get 'welcome/index'
  get '/login', to: 'sessions#new', as: 'login'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  resources :contexts do
    resources:images do
      resources :comments
    end
  end
end
