Rails.application.routes.draw do
  resources :games, only: %i[new create show]
  root 'games#new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
