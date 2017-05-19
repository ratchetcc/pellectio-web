Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

	# it all starts here
  root to: 'landing#index'

  # landing page simple search
  get '/s', :to => 'landing#search'
  post '/s', :to => 'landing#search'

  # retrieve and display an item
  get '/i/:region/:asin', :to => 'items#show'

  # redirect to Amazon
  get '/a/:region/:asin', :to => 'items#affiliate'

  # subscribe to the email list
  post 'subscribe', to: 'landing#subscribe'
  direct :subscribe do
    { controller: 'landing', action: 'subscribe' }
  end

  # support for legacy routes
  get '/home', :to => 'landing#index'

end
