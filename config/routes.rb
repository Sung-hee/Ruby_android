Rails.application.routes.draw do
  
  devise_for :models, controllers: { sessions: 'models/sessions', registrations: 'models/registrations' } do
    get 'sign_in', :to => 'devise/sessions#new', :as => :new_model_session
    get 'sign_up', :to => 'devise/registrations#new', :as => :new_model_registration
    delete 'sign_out', :to => 'devise/sessions#destroy', :as => :destroy_model_session
  end
  
  root 'home#bye'
  
  get 'home/bye' => 'home#bye'
  get 'home/index' => 'home#index'
  get 'home/charts' => 'home#charts'
  get 'home/weekcharts' => 'home#weekcharts'
  get 'home/monthcharts' => 'home#monthcharts'
  get 'home/tables' => 'home#tables'
  get 'home/c1charts' => 'home#c1charts'
  get 'home/giftcharts' => 'home#giftcharts'
  get 'home/gold_daycharts' => 'home#gold_daycharts'
  get 'home/gold_weekcharts' => 'home#gold_weekcharts'
  get 'home/gold_monthcharts' => 'home#gold_monthcharts'
  get 'home/foreignprice' => 'home#foreignprice'
  get 'home/theme' => 'home#theme'
  get 'home/themeStock' => 'home#themeStock'
  get 'home/pro' => 'home#pro'
  get 'home/proStock' => 'home#proStock'
  get 'home/kakaotalk' => 'home#kakaotalk'
  get 'home/payment' => 'home#payment'

  get 'users/sign_in' 
  get 'users/sign_up' 
  get 'users/up_session'
  get '/users/sign_out' => 'users#sign_out'
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
