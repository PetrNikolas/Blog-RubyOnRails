Rails.application.routes.draw do

  get 'blog/index'

  resources :posts do
    resources :comments
  end

  root :to => "home#index"

  get 'home/index'

end