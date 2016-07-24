Rails.application.routes.draw do

  devise_for :users
  resources :posts do
    resources :comments
  end

  root "pages#index"

  get '/about', to: 'pages#about'
end
