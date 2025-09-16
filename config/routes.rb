Rails.application.routes.draw do
  root "games#index"
  
  get "/rock", to: "games#rock"
  get "/paper", to: "games#paper"
  get "/scissors", to: "games#scissors"
  get "/rules", to: "games#rules"
end
