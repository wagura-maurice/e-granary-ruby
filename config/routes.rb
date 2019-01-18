Rails.application.routes.draw do
	# get '/' => redirect('customer/index')
	# get 'customer/index'
	get '/', to: 'customer#index', as: 'customer_home'
	post '/create', to: 'customer#create', as: 'customer_create'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
