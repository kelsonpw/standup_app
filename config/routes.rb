Rails.application.routes.draw do
  devise_for :users, controllers: { registrations: "registrations" }
  resource :accounts

  get "support/contact"
  get "activity/mine"
  get "activity/feed"

  root to: "activity#mine"
end
