Rails.application.routes.draw do
  root 'static_pages#home' 
  get  '/help',    to: 'static_pages#help'
  get  '/about',   to: 'static_pages#about'
  get  '/contact', to: 'static_pages#contact'
  get  '/signup',  to: 'users#new'
  post '/signup',  to: 'users#create'# overides the default '/users' url to match '/signup', 
  					# if not the pages that show errors will have the default url of '/users' taking from 
  					#the resource. Notice that the "form_for" method in the new.html.erb takes a url as an
  					# extra argument so as to effect the changes done here, if not it will access the create
  					# controller using the default route in this case which is "/users". This is explained 
  					# clarely on the exercise part of chapter 7 section 7.3.4
  resources :users

end
