Rails.application.routes.draw do
  
  resources :add_body_to_posts
  root 'posts#index'
    
  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end