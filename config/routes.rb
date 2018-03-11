Rails.application.routes.draw do
  namespace :admin do
    get '/poems', to: 'poems#index'
  end
end
