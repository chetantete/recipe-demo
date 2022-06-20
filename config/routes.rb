Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  resources :recipes
  root to: "recipes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
