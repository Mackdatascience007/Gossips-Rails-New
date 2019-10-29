Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/gossip/:id', to: 'gossip#show', as: 'gossip'
  get '/team', to: 'pages#team'
  get '/contact', to: 'pages#contact'
  get '/home', to: 'pages#home'
  get '/welcome/:first_name', to: 'pages#welcome'
end
