Rails.application.routes.draw do
  resources :my_wines
  resources :appellation_wineries
  resources :appellations
  resources :wineries
  resources :my_wine_cellars
  resources :wine_cellars
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
