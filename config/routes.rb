Rails.application.routes.draw do
  devise_for :users, path: 'users', controllers: { sessions: "users/sessions", registrations: 'users/registrations'  }
  # home
  root 'home#index'
  get 'home/reset_password' => 'home#reset_password', as: 'reset_password'
  patch 'home/update_reset_password' => 'home#update_reset_password', as: 'send_reset_password'

  #dashboard
  get 'dashboard' => 'dashboard#index', as: 'dashboard'

  # Edit User Account
  patch 'editaccounts' => 'editaccounts#update', as: 'update_account'

  # Profile pic
  post 'create/profilepic' => 'profilepics#create', as: 'create_pic'
  patch 'update/profilepic' => 'profilepics#update', as: 'update_pic'
  delete 'delete/profilepic' => 'profilepics#destroy', as: 'delete_pic'

  # All Users
  get 'allusers' => 'allusers#index', as: 'view_allusers'
  patch 'update/role/:id' => 'allusers#update', as: 'update_role'
  patch 'update/admin/:id/:admin' => 'allusers#updateadmin', as: 'update_admin'

  # Project Management Monitoring System Section
  # Projects
  get 'projects/dashboard' => 'projects#dashboard', as: 'projects_dashboard'
  get 'yourprojects/:pw_id' => 'projects#index', as: 'view_projects'
  get 'allprojects/:pw_id' => 'projects#allprojects', as: 'view_allprojects'

  # Workspace
  post 'create/workspace' => 'project_workspaces#create_workspace', as: 'create_workspace'
  patch 'update/workspace' => 'project_workspaces#update_workspace', as: 'update_workspace'
  delete 'delete/workspace/:id' => 'project_workspaces#delete_workspace', as: 'delete_workspace'

 # Rocks
  post 'create/rocks/:pw_id' => 'projects#create_rocks', as: 'create_rocks'
  patch 'update/rocks/:pw_id' => 'projects#update_rocks', as: 'update_rocks'
  delete 'delete/rocks/:pw_id/:id' => 'projects#delete_rocks', as: 'delete_rocks'

  #Rock messages
  post 'projects/rockmessages/:pw_id/:rock_id' => 'projects#create_rockmessage', as: 'create_rockmessage'
  patch 'projects/rockmessages/:pw_id/:rock_id/:id' => 'projects#update_rockmessage', as: 'update_rockmessage'
  delete 'delete/rockmessages/:pw_id/:rock_id/:id' => 'projects#delete_rockmessage', as: 'delete_rockmessage'

  # Milestones
  post 'create/milestones/:pw_id/:rock_id' => 'projects#create_milestones', as: 'create_milestones'
  patch 'update/milestones/:pw_id' => 'projects#update_milestones', as: 'update_milestones'
  delete 'delete/milestones/:pw_id/:rock_id/:id' => 'projects#delete_milestones', as: 'delete_milestones'

  #Milestone messages
  post 'projects/messages/:pw_id/:milestone_id' => 'projects#create_message', as: 'create_message'
  patch 'projects/messages/:pw_id/:milestone_id/:id' => 'projects#update_message', as: 'update_message'
  delete 'delete/messages/:pw_id/:rock_id/:milestone_id/:id' => 'projects#delete_message', as: 'delete_message'

  # Sub Milestones
  post 'create/submilestones/:pw_id/:rock_id/:milestone_id' => 'submilestones#create_submilestones', as: 'create_submilestones'
  patch 'update/submilestones/:pw_id' => 'submilestones#update_submilestones', as: 'update_submilestones'
  delete 'delete/submilestones/:pw_id/:rock_id/:milestone_id/:id' => 'submilestones#delete_submilestones', as: 'delete_submilestones'

  # Sub Milestone messages
  post 'submilestones/submessages/:pw_id/:milestone_id/:submilestone_id' => 'submilestones#create_submessage', as: 'create_submessage'
  patch 'submilestones/submessages/:pw_id/:rock_id/:milestone_id/:submilestone_id/:id' => 'submilestones#update_submessage', as: 'update_submessage'
  delete 'delete/submessages/:pw_id/:rock_id/:milestone_id/:submilestone_id/:id' => 'submilestones#delete_submessage', as: 'delete_submessage'


end
