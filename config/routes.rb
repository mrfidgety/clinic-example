Rails.application.routes.draw do
  root to: "home#index"

  devise_for :patients

  resources :clinics


  namespace :api, format: :json do
    resources :clinics, only: %i[index]
  end
end
