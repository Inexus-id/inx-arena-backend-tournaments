Rails.application.routes.draw do

  devise_for :admins
  root to: "home#index"

  namespace :api do
    get "sessions/login"
  end
end
