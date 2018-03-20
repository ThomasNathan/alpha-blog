Rails.application.routes.draw do

	#get 'pages/homepage', to: 'pages#homepage'

	#this makes it the default homepage instead of the rails welcome message
	root 'pages#homepage'

	get 'about', to: 'pages#about'

	resources :articles

	get 'signup', to: 'users#new'
	#post 'users', to: 'users#create'  (can do this) or...
	resources :users, except: [:new]

	get 'login', to: 'sessions#new'
	post 'login', to: 'sessions#create'
	delete 'logout', to: 'sessions#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
