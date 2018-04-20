Rails.application.routes.draw do
  root 'boxes#index'
  resources :boxes
end
