Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :games, only: %i[new create index show]
  resources :players, only: %i[new create index show]
  resources :boards, only: %i[new create index show]
  resources :scores, only: %i[new create]
end
