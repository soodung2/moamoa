Rails.application.routes.draw do
  
  get 'reviews/create'

  get 'reviews/destroy'
  get 'aboutus' => 'aboutus#aboutus'
  get 'comments/create'
  get 'comments/destroy'
  resources :comments, only: [:create, :destroy]
  resources :reviews, only: [:create, :destroy]
  devise_for :users
  
  root 'cloths#index'
  get 'cloths/men_top'=> 'cloths#men_top'
  get 'cloths/men_bottom'=>'cloths#men_bottom'
  get 'cloths/men_jeans'=>'cloths#men_jeans'
  get 'cloths/men_shoes'=>'cloths#men_shoes'
  
  
  resources :cloths do
    collection do
      get :search
    end
  end
  get 'cloths/search' => 'cloths#search'

  get '/editinfo' => 'editinfo#editinfo'
  get '/mypage' => 'mypage#mypage'
 
 
# for showing current user on my page 

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
