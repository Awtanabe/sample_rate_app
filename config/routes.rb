Rails.application.routes.draw do
  resources :products do
    collection do
      get :search
    end
    resources :rates, only: [:new,:create, :destroy]
  end
  devise_for :users
  root "products#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
