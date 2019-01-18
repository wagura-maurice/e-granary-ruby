Rails.application.routes.draw do
	# get '/' => redirect('customer/index')
	# get 'customer/index'
	get '/', to: 'customer#index', as: 'customer'
	post '/create', to: 'customer#create', as: 'customer_create'
	get '/thank_you', to: 'customer#thank_you', as: 'thank_you'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
