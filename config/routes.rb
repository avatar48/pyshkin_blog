Rails.application.routes.draw do
  resources :users
  resources :posts
  get 'about_me/index'
  root 'categories#index'
  resources :categories
  get 'posts/page/(:page(.:format))', to: 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
