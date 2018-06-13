Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/products', to: "products#index"
  get '/desks', to: "desks#index"
  get '/my_desks', to: "desks#my_desks"
  post '/create_bill', to: "bills#create_bill"
  post '/kill_bill/', to: "bills#kill_bill"
  get  '/desks/bills/:id', to: "bills#get_bill"
  post '/authenticate', to: "authenticate#authenticate"
end
