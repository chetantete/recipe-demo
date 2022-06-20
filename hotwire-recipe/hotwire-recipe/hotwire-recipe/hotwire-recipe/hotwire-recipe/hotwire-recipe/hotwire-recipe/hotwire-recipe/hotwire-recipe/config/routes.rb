Rails.application.routes.draw do
  resources :tweets do
    resource :like
    resource :retweet
  end
  
  resources :recipes
  root to: "recipes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
