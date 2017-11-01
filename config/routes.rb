Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

########### USER #################
  # First page: user profile page
  root 'users#profile'

  # Profile page
  get 'profile/:id' => 'users#profile', as: :profile

  # Login form filled --> user profile page
  post 'login' => 'users#handle_login', as: :login

  # New user button clicked --> sign up page
  get 'signup' => 'users#signup', as: :signup

  # Sign up form filled --> user profile page
  post 'signup' => 'users#handle_create'

  # User profile edit clicked --> edit user profile
  get 'edituser' => 'users#edit', as: :edit_user

  # Edit user form filled --> user profile page
  put 'edituser' => 'users#handle_update'

  # Delete user button clicked --> user profile page (login form)
  delete 'userprofile' => 'users#handle_delete', as: :delete_user

  # Logout user button clicked --> user profile page (login form)
  get 'logout' => 'users#handle_logout', as: :logout

########### BOAT #################
  # New boat button clicked --> new boat page
  get 'newboat' => 'boats#new', as: :new_boat

  # New boat form filled --> user profile page
  post 'newboat' => 'boats#handle_create'

  # Boat button clicked --> boat profile page
  get 'boatprofile' => 'boats#profile', as: :boat

  # Edit boat button clicked --> edit boat profile
  get 'editboat' => 'boats#edit', as: :edit_boat

  # Edit boat form filled --> boat profile page
  put 'editboat' => 'boats#handle_update'

  # Delete boat button clicked --> user profile page
  delete 'boatprofile' => 'boats#handle_delete', as: :delete_boat

########### JOB #################
  # New job button clicked --> new job page
  get 'newjob' => 'jobs#new', as: :new_job

  # New job form filled --> boat profile page
  post 'newjob' => 'jobs#handle_create'

  # Job button clicked --> job profile page
  get 'jobprofile' => 'jobs#profile', as: :job

  # Edit job button clicked --> edit job profile
  get 'editjob' => 'jobs#edit', as: :edit_job

  # Edit job form filled --> job profile page
  put 'editjob' => 'jobs#handle_update'

  # Delete job button clicked --> boat profile page
  delete 'jobprofile' => 'jobs#handle_delete', as: :delete_job


end
