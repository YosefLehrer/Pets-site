Rails.application.routes.draw do
  get '/', to: "welcome#home", as: "home"

  #Pet routes
  get '/pets', to: "pets#index", as: "pets"
  get '/pets/new', to: "pets#new", as: "new_pet"
  get '/pets/:id', to: "pets#show", as: "pet"
  patch '/pets/:id', to: "pets#update"
  get '/pets/:id/edit', to: "pets#edit", as: "edit_pet"
  post '/pets', to: "pets#create"
  delete '/pets/:id/delete', to: "pets#delete"
  
  #Owner routes
  get '/owners', to: "owners#index", as: "owners"
  get '/owners/new', to: "owners#new", as: "new_owner"
  get "/owners/two", to: "owners#two"
  get '/owners/:id', to: "owners#show", as: "owner"
  patch '/owners/:id', to: "owners#update"
  get '/owners/:id/edit', to: "owners#edit", as: "edit_owner"
  post '/owners', to: "owners#create"
  delete '/owners/:id/delete', to: "owners#delete"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
