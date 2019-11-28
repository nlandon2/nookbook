Rails.application.routes.draw do
  devise_for :users
    resources :recipes do
      resources :ingredients
    end
  root "recipes#index"
  # get '/search' => 'recipes#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
