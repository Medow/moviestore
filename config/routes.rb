Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'

  namespace :admin do 
  	root to: 'dashboard#index'
    resources :movies
  end
end
