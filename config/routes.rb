Rails.application.routes.draw do

	resources :countries
	resources :states
	resources :cities
	resources :my_companies
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
