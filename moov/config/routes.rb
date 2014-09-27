Rails.application.routes.draw do
  resources :interests

  resources :subgroups

  resources :nonprofits

  resources :events

  resources :volunteers

  get 'static_pages/home'
  get 'static_pages/help'
end
