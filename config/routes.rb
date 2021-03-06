Rails.application.routes.draw do
  
  root "events#index"
  devise_for :users, :controllers => { registrations: 'registrations' }
  resources :users, only: [:show] 
  resources :events, only: [:index, :new, :create, :show] do
    resources :attendances, only: [:create]
  end

end
