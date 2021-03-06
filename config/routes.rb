Bloccit::Application.routes.draw do
  get "comments/create"
  # The generator also built out get routes in the routes.rb file. Make sure to delete those, because our resources :topics declaration takes care of that.
  # get "topics/index"
  # get "topics/new"
  # get "topics/show"
  # get "topics/edit"
  devise_for :users
   # resources :users, only: [:show]
   resources :users, only: [:show, :update, :index]

  # get "posts/index"
  # get "posts/show"
  # get "posts/new"
  # get "posts/edit"
  # resources :posts
  # To have topics/new route to the right action, we need to add the route to our routes.rb file
    # resources :topics




  #  resources :topics do
  #   resources :posts, except: [:index] do
  #     resources :comments, only: [:create, :destroy]
  #   end

  #    post '/up-vote' => 'votes#up_vote', as: :up_vote
  #    post '/down-vote' => 'votes#down_vote', as: :down_vote
  # end


 resources :topics do
    resources :posts, except: [:index], controller: 'topics/posts'
  end

  resources :posts, only: [:index] do
    resources :comments, only: [:create, :destroy]
      resources :favorites, only: [:create, :destroy]

     post '/up-vote' => 'votes#up_vote', as: :up_vote
     post '/down-vote' => 'votes#down_vote', as: :down_vote
  end



  # get "welcome/index"
  # get "welcome/about"
  get "welcome/contact"
  get 'about' => 'welcome#about'
  # alternatively, the below link may be denoted as =>  root({to: 'welcome#index'})
    root to: 'welcome#index'
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
  # => 
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