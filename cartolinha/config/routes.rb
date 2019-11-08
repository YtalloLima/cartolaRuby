Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rounds
  resources :teams
  resources :games
  resources :players
  resources :categories

  match 'confrontos' =>'games#mostrarConfrontos', via:'get'

  #match 'confrontos/:id' =>'games#mostrarConfrontos', via:'get'
end
