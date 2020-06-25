Rails.application.routes.draw do
  resources :restaurants, only: [:index, :new, :create, :show] do
    member do
      get :review
    end
    resources :reviews, only: [:new, :create]
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
