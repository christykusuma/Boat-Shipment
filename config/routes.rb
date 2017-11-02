Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

########### USER #################
  # First page: user profile page
  root 'users#profile'

########### BOAT #################
  # New boat button clicked --> new boat page
  get 'newboat' => 'boats#new', as: :new_boat

  # New boat form filled --> user profile page
  post 'newboat' => 'boats#handle_create'

  # Boat button clicked --> boat profile page
  get 'boatprofile/:id' => 'boats#profile', as: :boat

  # Edit boat button clicked --> edit boat profile
  get 'editboat/:id' => 'boats#edit', as: :edit_boat

  # Edit boat form filled --> boat profile page
  patch 'editboat/:id' => 'boats#handle_update'

  # Add assignment button clicked --> Moves from available to current jobs
  get 'addassignment/:boat_id/:job_id' => 'boats#add_assignment', as: :add_assignment

  # Delete assignment button clicked --> Moves from available to current jobs
  delete 'deleteassignment/:boat_id/:job_id' => 'boats#delete_assignment', as: :delete_assignment

  # Delete boat button clicked --> user profile page
  delete 'boatprofile/:id' => 'boats#handle_delete', as: :delete_boat

########### JOB #################
  # New job button clicked --> new job page
  get 'newjob/:boat_id' => 'jobs#new', as: :new_job

  # New job form filled --> boat profile page
  post 'newjob/:boat_id' => 'jobs#handle_create'

  # Job button clicked --> job profile page
  get 'jobprofile/:boat_id/jobs/:id' => 'jobs#profile', as: :job

  # Edit job button clicked --> edit job profile
  get 'editjob/:id' => 'jobs#edit', as: :edit_job

  # Edit job form filled --> job profile page
  patch 'editjob/:id' => 'jobs#handle_update'

  # Delete job button clicked --> boat profile page
  delete 'jobprofile/:boat_id/jobs/:id' => 'jobs#handle_delete', as: :delete_job


end
