SampleApp::Application.routes.draw do
  resources :users do
    member do
      get :following, :followers
    end
  end
  resources :sessions, only: [:new, :create, :destroy]
  resources :microposts, only: [:create, :destroy]
  resources :relationships, only: [:create, :destroy]

  root to: 'static_pages#home'

  match '/signup',     to: 'users#new'
  match '/signin',     to: 'sessions#new'
  match '/signout',    to: 'sessions#destroy', via: :delete

  match '/help',       to: 'static_pages#help'
  match '/about',      to: 'static_pages#about'
  match '/contact',    to: 'static_pages#contact'
  match '/lilly',      to: 'static_pages#lilly'
  match '/careerfair', to: 'static_pages#careerfair'
  match '/ncaa',       to: 'static_pages#ncaa'
  match '/simon',      to: 'static_pages#simon'
  match '/oneamerica', to: 'static_pages#oneamerica'
  match '/quicken',    to: 'static_pages#quicken'
  match '/blackbaud',  to: 'static_pages#blackbaud'
  match '/docz',       to: 'static_pages#docz'
  match '/wellpoint',  to: 'static_pages#wellpoint'
  match '/pacers',     to: 'static_pages#pacers'
  match '/cavaliers',   to: 'static_pages#cavaliers'
  match '/rci',         to: 'static_pages#rci'
  match '/minnesota',   to: 'static_pages#minnesota'
  match '/bigten',      to: 'static_pages#bigten'
  match '/exacttarget', to: 'static_pages#exacttarget'
  match '/bkd',         to: 'static_pages#bkd'
  match '/isc',         to: 'static_pages#isc' 
  match '/herffjones',  to: 'static_pages#herffjones'      



  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
