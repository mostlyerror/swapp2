Rails.application.routes.draw do
  devise_for :users

  namespace :admin do
    get "/" => "home#index"
  end

  root to: "home#index"
end
