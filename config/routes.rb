Rails.application.routes.draw do
  root "veiculos#index"

  resources :veiculos do
    resources :owners
  end
end


