Rails.application.routes.draw do
  devise_for :users
  resources :jewel_data
  # get 'welcome/index'
  root "welcome#index"
  get "welcome/aboutUs"
  
end
