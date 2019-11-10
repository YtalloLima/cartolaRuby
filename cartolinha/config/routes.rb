Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :rounds
  resources :teams
  resources :games
  resources :players
  resources :categories
  resources :actions

  #match 'confrontos' =>'games#confrontos', via:'get'
  get "confrontos/:id", to: "games#confrontos", as: "confrontos_rodada"

    get "avaliar/:id/:id1", to: "actions#avaliar_jogadores", as: "avaliar_jogadores"

  #match 'confrontos/:id' =>'games#mostrarConfrontos', via:'get'
end
