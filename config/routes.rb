
Rails.application.routes.draw do
  #get 'sessions/new'
  get    'login'  => 'sessions#new'
  post   'login'  => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get    'logout' => 'sessions#destroy'



  get 'links/17680270212579271896', to: 'offers#index'
  get 'offers/:secure_list_id/answers', param: :secure_list_id, to: 'answers#index', as: 'offer_answers'
  get 'offers/:secure_create_id/answers/new', param: :secure_create_id, to: 'answers#new', as: 'new_offer_answer'
  post 'offers/:secure_create_id/answers/new', param: :secure_create_id, to: 'answers#create', as: 'create_offer_answer'
  get 'ok', to: 'answers#ok', as: 'answer_ok'


  resources :users
  #resources :offers do #, :param => :secure_id do 
  #  resources :answers
  #end
  #
  #resources :courses
  #resources :professors
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'
  #
  root 'sessions#new'

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
