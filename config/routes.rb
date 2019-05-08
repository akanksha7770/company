Rails.application.routes.draw do
  get 'home/index'
  devise_for :users
	resources :company
	resources :user_roles
	resources :user_regions
	resources :regions
	resources :country
	resources :state
	resources :city
	resources :images
	resources :places
	resources :nodes
	resources :users
	root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
