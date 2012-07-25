Csapp::Application.routes.draw do |map|
<<<<<<< HEAD
    

  resources :clients
=======

  

  resources :banks

  resources :agendas

  resources :settings

get "set_mods/index"
get "meetings/index"

resources :clients
>>>>>>> 852246ec39c8beb200a994203c47f254d0759306
resources :shares
match '/users/:id/staffs', :to => "staffs#index"

match '/min_details/update_agenda', :to =>"min_details#update_agenda"

match '/company_addresses/:id/status', :to => "company_addresses#toggled_status"
match '/company_director_designations/:id/status', :to => "company_director_designations#toggled_status"
match '/company_names/:id/status', :to => "company_names#toggled_status"
match '/meeting_directors/status', :to => "meeting_directors#toggled_status"

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
match '/settings/:id/delete', :to => "settings#destroy"
match '/agendas/:id/delete', :to => "agendas#destroy"

match '/banks/:id/delete', :to => "banks#destroy"

resources :clients do
  # first Letter
  map.resources :first_letters 
  match  '/first_letters/new',             :to => "first_letters#new" 
  match  '/first_letters/:id/edit',             :to => "first_letters#edit" 
  match  '/first_letters/:id/delete',             :to => "first_letters#destroy" 
  match  '/first_letters/:id',             :to => "first_letters#show" 
  match  '/first_letters',             :to => "first_letters#index" 

 
  match  '/minutes',             :to => "minutes#index" 
  match  '/minutes/min_generators',             :to => "min_generators#index"
   
  match  '/minutes/notices',             :to => "notices#index"
  match  '/minutes/notices/new',             :to => "notices#new" 
  match  '/minutes/notices/:id/edit',             :to => "notices#edit" 
  match  '/minutes/notices/:id/delete',             :to => "notices#destroy" 
  match  '/minutes/notices/:id',             :to => "notices#show" 
  
    map.resources :bankdetails 
    
  match  '/minutes/notices/:notice_id/agenda/:agenda_id',             :to => "notices#cba" 

  
  match  '/minutes/notices/:notice_id/agenda/:agenda_id/bankdetails',             :to => "bankdetails#index" 
  match  '/minutes/notices/:notice_id/agenda/:agenda_id/bankdetails/:id/edit',             :to => "bankdetails#edit" 
  match  '/minutes/notices/:notice_id/agenda/:agenda_id/bankdetails/:id/delete',             :to => "bankdetails#destroy" 
  match  '/minutes/notices/:notice_id/agenda/:agenda_id/bankdetails/:id',             :to => "bankdetails#show" 
  
    map.resources :company_minutes 

  match  '/minutes/notices/:notice_id/agenda/:agenda_id/company_minutes',             :to => "company_minutes#index" 
  match  '/minutes/notices/:notice_id/agenda/:agenda_id/company_minutes/:id/edit',             :to => "company_minutes#edit" 
  match  '/minutes/notices/:notice_id/agenda/:agenda_id/company_minutes/:id/delete',             :to => "company_minutes#destroy" 
  match  '/minutes/notices/:notice_id/agenda/:agenda_id/company_minutes/:id',             :to => "company_minutes#show" 
  
  
  
  
  match  '/minutes/min_details',             :to => "min_details#index"
  match  '/minutes/min_details/new',             :to => "min_details#new" 
  match  '/minutes/min_details/:id/edit',             :to => "min_details#edit" 
  match  '/minutes/min_details/:id/delete',             :to => "min_details#destroy" 
  match  '/minutes/min_details/:id',             :to => "min_details#show" 


  match  '/requirements',             :to => "requirements#index" 
  match '/requirements/din_details', :to => "din_details#index"
  match '/requirements/form1a_details', :to => "form1a_details#index"
  match '/requirements/form1a_details/company_names/:id/edit', :to => "company_names#edit"
  match '/requirements/din_details/compdirs/:id/edit', :to => "compdirs#edit"
  match '/requirements/din_details/compshares/:id/edit', :to => "compshares#edit"
  match '/requirements/form1a_details/form1as/:id/edit', :to => "form1as#edit"
  match '/requirements/incorps', :to => "incorps#index"
<<<<<<< HEAD
<<<<<<< HEAD
=======
  
>>>>>>> 5fb2e0439c053b937a1fbe5ba553414fa2fa1ef8
=======
  match '/requirements/incorps/obj', :to => "incorps#obj"
>>>>>>> 852246ec39c8beb200a994203c47f254d0759306
  #PDF for AOA
  match '/requirements/incorps/aoa', :to => 'incorps#aoa'
 
  match  '/comp_incorps',             :to => "comp_incorps#index" 
  match  '/comp_incorps/incorporated_company_names',             :to => "incorporated_company_names#index" 
 
 #PDF for MOA
  match '/requirements/incorps/moa', :to => 'incorps#moa'
<<<<<<< HEAD
  
# Routes for Company Main Objects
=======
   #PDF for first_letter
   match  '/first_letters/:id/fl',             :to => "first_letters#fl"
   
>>>>>>> 852246ec39c8beb200a994203c47f254d0759306
  match '/requirements/incorps/company_main_objects', :to => "company_main_objects#index"
  match '/requirements/incorps/company_main_objects/:id', :to => "company_main_objects#show"
  match '/requirements/incorps/company_main_objects/:id/edit', :to => "company_main_objects#edit"
  match '/requirements/incorps/company_main_objects/:id/delete', :to => "company_main_objects#destroy"
<<<<<<< HEAD
  
  # Routes for Company Other Objects
  match '/requirements/incorps/company_other_objects', :to => "company_other_objects#index"
  match '/requirements/incorps/company_other_objects/:id', :to => "company_other_objects#show"
  match '/requirements/incorps/company_other_objects/:id/edit', :to => "company_other_objects#edit"
  match '/requirements/incorps/company_other_objects/:id/delete', :to => "company_other_objects#destroy"
  
=======
  
  # Routes for Company Other Objects
  match '/requirements/incorps/company_other_objects', :to => "company_other_objects#index"
  match '/requirements/incorps/company_other_objects/:id', :to => "company_other_objects#show"
  match '/requirements/incorps/company_other_objects/:id/edit', :to => "company_other_objects#edit"
  match '/requirements/incorps/company_other_objects/:id/delete', :to => "company_other_objects#destroy"
  
>>>>>>> 852246ec39c8beb200a994203c47f254d0759306
  # Routes for Company incidental Objects
  match '/requirements/incorps/company_incidental_objects', :to => "company_incidental_objects#index"
  match '/requirements/incorps/company_incidental_objects/:id', :to => "company_incidental_objects#show"
  match '/requirements/incorps/company_incidental_objects/:id/edit', :to => "company_incidental_objects#edit"
  match '/requirements/incorps/company_incidental_objects/:id/delete', :to => "company_incidental_objects#destroy"
  
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
resources :notices
resources :min_details
resources :meeting_directors
  match '/signin', :to =>'sessions#new'
  match '/signout', :to =>'sessions#destroy'
  match '/signup/:invitation_token', :to => "users#new"
  root :to => "invitations#new"
  
end
