Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
      root "products#index"
   # get "products" => "products#index"
   # get "products/new"  =>   "products#new" 
   # get "products/:id"	=>	"products#show",  as: "product"
   
  resources :products
end
