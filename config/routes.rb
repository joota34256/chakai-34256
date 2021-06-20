Rails.application.routes.draw do
  devise_for :users
  root to:"events#index"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

<<<<<<< Updated upstream
  resources :events
=======
  # redources :events do
    
  # end
>>>>>>> Stashed changes
end
