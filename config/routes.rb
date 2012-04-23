Csapp::Application.routes.draw do

match '/users/:id/staffs', :to => "staffs#index"

resources :clients
resources :password_resets
resources :dins
resources :contacts, :only => [:index, :new, :create, :edit, :update, :show ]
match '/contacts/:id/delete', :to => "contacts#destroy"


resources :users 
resources :staffs

resources :compdirs
resources :requirements
resources :sessions, :only => [:new, :create, :destroy ]
resources :dashboard, :only => [:index ]

resources :invitations
  match '/signin', :to =>'sessions#new'
  match '/signout', :to =>'sessions#destroy'
  match '/signup/:invitation_token', :to => "users#new"
  root :to => "invitations#new"
  
end
