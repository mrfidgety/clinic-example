Rails.application.routes.draw do
  resources :clinics
  devise_for :patients
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
end
