Rails.application.routes.draw do


  get 'attempts/new'

  root   'static_pages#home'

  get    'help'    => 'static_pages#help'
  
  get    'about'   => 'static_pages#about'
  
  get    'contact' => 'static_pages#contact'
  
  get    'form'    => 'static_pages#form_test'
  
  get    'signup'  => 'users#new'
  
  get    'login'   => 'session#new'
  post   'login'   => 'session#create'
  delete 'logout'  => 'session#destroy'
  
  resources :users
  
  get 'jokes/new' => 'jokes#new'
  post 'jokes/new' => 'jokes#create'
  
  get 'jokes/index' => 'jokes#index'
  
  
  get 'jokes/:id' => 'jokes#show'
  
  get 'jokes/:id/delete' => 'jokes#killpage'
  post 'jokes/:id/delete' => 'jokes#destroy'
  
  
  get 'questions/:id' => 'questions#show'
  post 'questions/:id' => 'session#answer_question_2'
  
  get 'newquiz' => 'attempts#new'
  post 'newquiz' => 'attempts#create'
  
  
  get 'quizpage' => 'static_pages#quiz_page'
  post 'quizpage' => 'session#and_one'
  
  get 'quizpage2' => 'static_pages#quiz_page2'
  post 'quizpage2' => 'session#and_two'
  
  get 'quizpage3' => 'static_pages#quiz_page3'
  post 'quizpage3' => 'session#and_three'
  
  get 'quizpage4' => 'static_pages#quiz_page4'
  post 'quizpage4' => 'session#answer_question'
  
##  get    'question' => 'questions#show'
  
    
  #get    'jokes/new'

  #get    'users/new'

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
