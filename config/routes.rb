Rails.application.routes.draw do

  get 'portfolio/index'

  resources :posts
  root :to => "home#index"

  get 'home/index'

end
