Rails.application.routes.draw do
	# get '/' => redirect('customer/index')
	# get 'customer/index'
	get '/', to: 'customer#index', as: 'customer'
	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
