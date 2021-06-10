Rails.application.routes.draw do
  #get '/posts', to: 'posts#index'
  #get '/stocks', to: 'stocks#index'
  resources :posts do
    collection do
      post :confirm
    end
  end
end
