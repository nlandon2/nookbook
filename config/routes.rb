Rails.application.routes.draw do
  devise_for :users
    resources :recipes do
      resources :ingredients do
        member do
           patch :shopping_toggle
        end
      end
    end
  root "recipes#index"
  # get '/search' => 'recipes#search'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
