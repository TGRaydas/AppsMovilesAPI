Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/products', to: "products#index"
  get '/desks', to: "desks#index"
  get '/', to: "home#index"
  get '/create_bill', to: "bills#create_bill"
  get '/kill_bill/:id', to: "bills#kill_bill"
  post '/authenticate', to: "authenticate#authenticate"
end
