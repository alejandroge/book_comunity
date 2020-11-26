Rails.application.routes.draw do
  resources :authors
  get 'welcome/index'

  resources :books

  root 'welcome#index'
end
