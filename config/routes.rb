Rails.application.routes.draw do

  resources :posts do
    resources :comments
  end

  root "pages#about"

  get '/about', to: 'pages#about'
end
