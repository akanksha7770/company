Rails.application.routes.draw do
  devise_for :users
	resources :company
	resources :user_roles
	root 'company#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

