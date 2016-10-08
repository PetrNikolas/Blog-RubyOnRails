Rails.application.routes.draw do

  devise_for :users

  get 'blog/index'

  resources :posts do
    resources :comments
  end

  root :to => "blog#index"
end