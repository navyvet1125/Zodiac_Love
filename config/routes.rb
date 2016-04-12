Rails.application.routes.draw do
  root 'welcome#index', as: :root
  get 'login' => 'sessions#new', as: :login
  post 'login' => 'sessions#create'
  get 'users/search'

  post 'dashboard' =>'users#create'
  get 'signup' =>'users#new', as: :user_new
  get 'messages' =>'message#index', as: :messages
  post 'signup' => 'users#update'


  patch 'signup' => 'users#update'
  delete 'logout' =>'sessions#destroy'
  delete 'users/destroy'

  get 'signs' => 'sun_signs#index', as: :signs

  get 'dashboard'=> 'users#index', as: :users
  get 'dashboard/edit/:name' => 'users#edit', as: :user_edit
  get ':user_name'=>'users#show', as: :user
  get ':user_name/message/:title' => 'message#show', as: :message
  post ':user_name/message' => 'message#create'
  get ':user_name/message' => 'message#new', as: :new_message
  get 'signs/:name' =>'sun_signs#show', as: :sign

  delete ':user_name/message/:title' => 'message#destroy'

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
