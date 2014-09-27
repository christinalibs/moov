Rails.application.routes.draw do
  resources :subgroups

  resources :nonprofits

  resources :events

  resources :interests

  resources :volunteers

  get 'static_pages/homes'
  get 'static_pages/help'
end
