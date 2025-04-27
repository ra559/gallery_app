Rails.application.routes.draw do
  devise_for :users
  resources :photos, only: [:index, :new, :create]
  root "photos#index"

  # Optional: Keep the health check route if you want
  get "up" => "rails/health#show", as: :rails_health_check

  # Optional: PWA routes (commented out)
end

