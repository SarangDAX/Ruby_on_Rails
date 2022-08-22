Rails.application.routes.draw do
  # Define your application routes per the DSL in 
  

  # Defines the root path route ("/")
  # root "articles#index"
  root 'kitchens#index'
  resources :kitchens#, only:[:show, :index, :new, :create, :edit, :update ]

  #get 'add_item', to: 'pages#add' 
end
