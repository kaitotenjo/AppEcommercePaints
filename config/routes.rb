Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get '/search.json',to:"search#search"
  get "/search",to:"paints#search"
  get '/carts', to: 'cart#show'
  post '/cart_update', to: "cart#update_status"
  resources :paints
  root 'static_page#index'

  get "/login",to: "sessions#new"
  post "/login", to: "sessions#create"
  delete "/logout", to:"sessions#destroy"
  get "/signup", to: "users#new"
  post "/signup",  to: "users#create"
  post 'bot_actions/process_user_input'
  get "/introducion", to: "static_page#introducion"
  get "/news", to: "static_page#news"
  get "/open_agent", to: "static_page#open_agent"
  get "/paints", to: "paints#index"
  get "/products", to: "paints#admin_product"
  get "/create_product", to: "paints#new"
  get "/action_bot", to:"bot_actions#index"
  post "/order_items",to:"order_items#create"
  get "/manager_carts",to:"cart#admin_cart"
  post '/manager_carts', to: 'cart#update'
  post '/payments', to: 'payments#create'

  resources :users
  resources :order_items
  resources :messages, only: [:new]
  resources :payments
  resources :comments
end
