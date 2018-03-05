Rails.application.routes.draw do

	#get 'pages/homepage', to: 'pages#homepage'

	#this makes it the default homepage instead of the rails welcome message
	root 'pages#homepage'

	get 'about', to: 'pages#about'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
