Rails.application.routes.draw do
  root to: 'pages#home'
  # get '/pages/show', to: 'pages#show', as: "index"

  namespace :pages do
    get 'home'
    get 'show'
    get 'projects'
  end
end
