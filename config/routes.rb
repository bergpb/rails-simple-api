Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get '/', to: 'articles#index'
  get '/show/:id', to: 'articles#show'
  post '/create', to: 'articles#create'
  patch '/update/:id', to: 'articles#update'
  delete '/delete/:id', to: 'articles#destroy'
end
