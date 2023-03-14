Rails.application.routes.draw do
  resources :characters
  devise_for :users 
  root 'home#index'
  scope '/search' do
    resources :animes, :characters
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
