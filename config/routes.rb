Rails.application.routes.draw do
  resources :recipes do
    resources :ingredients
  end
  root "recipes#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
