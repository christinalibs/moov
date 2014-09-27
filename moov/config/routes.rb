Rails.application.routes.draw do
  resources :subgroups, has_one: :interest

  resources :nonprofits, has_one: :interest

  resources :events, has_one: :interest

  resources :volunteers, has_one: :interest

  # resources :interests

  get 'static_pages/home'
  get 'static_pages/help'
end
