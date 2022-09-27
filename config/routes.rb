Rails.application.routes.draw do
  get 'static_pages/home'
  get 'static_pages/help'
  resources :microposts
  resources :user2s
  # root 'application#hello'
  root 'static_pages#home'
end
