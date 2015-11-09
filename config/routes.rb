Rails.application.routes.draw do
  devise_for :users, controllers: {registrations: 'users/registrations', sessions: 'users/sessions', unlocks: 'users/unlocks', passwords: 'users/passwords', confirmations: 'users/confirmations'}
  # , skip: :all
  # devise_scope :user do
  #   post "/users/sign_in" => "users/sessions#create", as: :user_session
  #   delete "/users/sign_out" => "users/sessions#destroy", as: :destroy_user_session
  #   post "/users/password" => "users/passwords#create", as: :user_password
  #   patch "/users/password" => "users/passwords#update"
  #   put "/users/password" => "users/passwords#update"
  #   post "/users" => "users/registrations#create"
  #   patch "/users" => "users/registrations#update"
  #   put "/users" => "users/registrations#update"
  #   delete "/users" => "users/registrations#destroy"
  #   post '/users/confirmation' => 'users/confirmations#create', as: :user_confirmation
  #   post '/users/unlock' => 'users/unlocks#create', as: :user_unlock
  # end

  # controllers: {registrations: 'users/registrations', sessions: 'users/sessions', unlocks: 'users/unlocks', passwords: 'users/passwords', confirmations: 'users/confirmations'}
  namespace :api, path: '', constraints: {subdomain: 'api'}, defaults: {format: :json} do
    namespace :v1 do
      resources :users, except: [:new, :create]
      resources :listings do
        collection do
          get 'search' => 'listings#basic_search'
        end
      resources :conversations do
        resources :messages
       end
     end
   end
  end

  namespace :api, path: '', constraints: {subdomain: 'api'} do
  namespace :v1 do
    resources :events
  end
end
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
