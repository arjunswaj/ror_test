Links::Application.routes.draw do

  mount Share::Engine, :at => "/share"
  mount Ads::Engine, :at => "/ad"
  
  get "welcome/index"
  root to: "welcome#index"
  
  get "sessions/login" 
  post "login_attempt", to: "sessions#login_attempt" 
  get "logout", to: "sessions#logout"
  
  resources :users
  get '/links/new', to: 'links#new' , :as => 'my_new_link' 
  post '/links/', to: 'links#create', :as => 'create_my_link'
  get '/links/:id/edit(.:format)', to: 'links#edit', :as => 'edit_link'
  get '/links', to: 'links#index', :as => 'my_links'
  get '/links/:id', to: 'links#show'  
  patch '/links/:id', to: 'links#update'
  put '/links/:id', to: 'links#update'
  delete '/links/:id', to: 'links#destroy', :as => 'delete_link'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
