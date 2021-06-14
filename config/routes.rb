Rails.application.routes.draw do
  
  resources :newsletters

  get 'coming_soon/index'

  resources :restaurant_searches
  
  resources :lgas do
  	collection { post :import }
  end
  
  resources :states
  
  get 'home/index'
  
  # root "coming_soon#index"
  root "home#index"

  
  resources :restaurants do
  		resources :dishes
  end  
  
  resources :cuisines
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
