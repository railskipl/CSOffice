Csapp::Application.routes.draw do |map|
  
  resources :clients
resources :shares
match '/users/:id/staffs', :to => "staffs#index"

match '/company_addresses/:id/status', :to => "company_addresses#toggled_status"
match '/company_director_designations/:id/status', :to => "company_director_designations#toggled_status"
match '/company_names/:id/status', :to => "company_names#toggled_status"


match '/company_main_objects/:id/delete', :to => "company_main_objects#destroy"
match '/company_other_objects/:id/delete', :to => "company_other_objects#destroy"
match '/company_incidental_objects/:id/delete', :to => "company_incidental_objects#destroy"
match '/moa_objects/:id/delete', :to => "moa_objects#destroy"
match '/incidental_objects/:id/delete', :to => "incidental_objects#destroy"
match '/proposed_names/:id/delete', :to => "proposed_names#destroy"
match '/rocs/:id/delete', :to => "rocs#destroy"
match '/company_names/:id/delete', :to => "company_names#destroy"
match '/company_addresses/:id/delete', :to => "company_addresses#destroy"
match '/company_director_designations/:id/delete', :to => "company_director_designations#destroy"
match '/clients/:id/delete', :to => "clients#destroy"
match '/users/:id/delete', :to => "users#destroy"
match '/dins/:id/delete', :to => "dins#destroy"
resources :clients do
  match  '/requirements',             :to => "requirements#index" 
  match '/requirements/din_details', :to => "din_details#index"
  match '/requirements/form1a_details', :to => "form1a_details#index"
  match '/requirements/form1a_details/company_names/:id/edit', :to => "company_names#edit"
  match '/requirements/incorps', :to => "incorps#index"
  match  '/comp_incorps',             :to => "comp_incorps#index" 
  match  '/comp_incorps/incorporated_company_names',             :to => "incorporated_company_names#index" 
  
  
end
resources :password_resets
resources :dins
resources :contacts, :only => [:index, :new, :create, :edit, :update, :show ]
match '/contacts/:id/delete', :to => "contacts#destroy"


match '/add-clients/:id', :controller => "users", :action=>"add_clients"
resources :users 
resources :staffs
resources :din_details
resources :compdirs
resources :compshares
resources :states
resources :rocs
resources :form1as
resources :form1a_details
resources :proposed_names
resources :sessions, :only => [:new, :create, :destroy ]
resources :dashboard, :only => [:index ]
resources :incorps
resources :company_addresses
resources :company_director_designations
resources :moa_objects
resources :incidental_objects
resources :invitations
resources :company_main_objects
resources :company_incidental_objects
resources :company_other_objects
resources :company_names
resources :incorporated_company_names

  match '/signin', :to =>'sessions#new'
  match '/signout', :to =>'sessions#destroy'
  match '/signup/:invitation_token', :to => "users#new"
  root :to => "invitations#new"
  
end
