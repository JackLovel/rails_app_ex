Rails.application.routes.draw do
  get  '/signup', to: 'users3#new'
  # get    'static_pages/home'
  get '/help', to: 'static_pages#help'
  get '/contact', to: 'static_pages#contact'
  get '/about', to: 'static_pages#about'
  resources :microposts
  resources :user2s
  # root 'application#hello'
  root 'static_pages#home'
end
