Rails.application.routes.draw do
  resources :events

  resources :interests

  resources :volunteers

  get 'static_pages/homes'
  get 'static_pages/help'
end
