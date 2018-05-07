Rails.application.routes.draw do
  resources :matches
  resources :teams
  devise_for :users, controllers: {
  		registrations: 'users/registrations'
	}

root to: 'teams#index'
  # devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
