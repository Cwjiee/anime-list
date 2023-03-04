Rails.application.routes.draw do
  devise_for :users 
  root 'home#index'
  scope '/search' do
    resources :animes
    get 'animes/user_update'
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
