Rails.application.routes.draw do
    devise_for :owners
  	root 'places#index'
	resources :places do 
		resources :comments, only: [:create, :destroy]
	end
	resources :categories, only: [:show, :index]	
	#get 'places/new', to: 'places#new'
	#get 'places', to:'places#index'
	#get 'places/:id', to:'places#show', as: "place"
	#post 'places', to: 'places#create'
	#get 'places/:id/edit', to: 'places#edit' as: "edit_place"
	#patch 'places/:id', to: 'places#update'
	#delete 'places/:id', to: 'places#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
