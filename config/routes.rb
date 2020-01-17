Rails.application.routes.draw do

  get 'welcome/index'
  devise_for :users
	resources :countries
	resources :states
	resources :cities
	resources :my_companies
	resources :places
	resources :nodes
	resources :roles
	resources :regions
  root 'welcome#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
