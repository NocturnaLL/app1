Rails.application.routes.draw do
	root 'places#index'
	
	get 'places', to:'places#index'
	get 'places/:id', to:'places#show', as: "show_place"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
