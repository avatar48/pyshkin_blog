Rails.application.routes.draw do
  get 'about_me/index'
  root 'categories#index'
  resources :categories
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
