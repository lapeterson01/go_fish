Rails.application.routes.draw do
  resources :games, only: %i[show]
  root 'games#show'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
