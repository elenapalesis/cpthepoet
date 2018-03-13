Rails.application.routes.draw do
  namespace :admin do
    get '/poems', to: 'poems#index'
    post '/poems', to: 'poems#create'
  end
end
