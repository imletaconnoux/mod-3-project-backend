Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :products, only: [:index, :create]
      resources :lists, only: [:index, :create, :update]
    end
  end
end
