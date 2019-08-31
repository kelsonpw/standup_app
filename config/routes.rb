Rails.application.routes.draw do
  get 'support/contact'
  get "activity/mine"
  get "activity/feed"

  root to: "activity#mine"
end
