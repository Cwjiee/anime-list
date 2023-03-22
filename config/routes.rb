Rails.application.routes.draw do
  root 'home#index'
  resources :characters
  devise_for :users
  resources :lists, except: %i[new]
  scope '/search' do
    resources :animes do
      resources :lists, only: %i[new]
    end
    resources :characters
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
end