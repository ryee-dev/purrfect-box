Rails.application.routes.draw do
  root 'boxes#index'
  get '/boxes', to: 'boxes#allBoxes'
  resources :boxes do
    resources :reviews, :except => [:index]
  end
end
