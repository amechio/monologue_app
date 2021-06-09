Rails.application.routes.draw do
  get '/posts', to: 'posts#index'
  get '/stocks', to: 'stocks#index'
  resources :posts
end
