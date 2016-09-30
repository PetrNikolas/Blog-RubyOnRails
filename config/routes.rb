Rails.application.routes.draw do

  devise_for :users
  get 'blog/index'

  resources :posts do
    resources :comments
  end

  root :to => "home#index"

  get 'home/index'

end