Rails.application.routes.draw do
  root 'boxes#index'
  get '/boxes', to: 'boxes#allBoxes'
  resources :boxes

end
