Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :authors do
  resources :books
 end
  #with_options only: [:destroy, :create] do |list_ony|
   #   list_only.resources :books
    #  list_only.resources :athors
  #end
  
  #resources :comments, constraints: {subdomain: 'api'} 
  
end
