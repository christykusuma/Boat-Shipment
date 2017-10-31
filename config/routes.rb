Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

########### USER #################
  # First page: user profile page
  root 'user#profile'

  # Login form filled --> user profile page
  post 'login' => 'users#handle_login'

  # New user button clicked --> sign up page
  get 'login' => 'users#signup'

  # Sign up form filled --> user profile page
  post 'signup' => 'users#handle_create'

  # User profile edit clicked --> edit user profile
  get 'edituser' => 'users#edit'

  # Edit user form filled --> user profile page
  put 'edituser' => 'users#handle_update'

  # Delete user button clicked --> user profile page (login form)
  destroy 'userprofile' => 'users#handle_delete'

  # Logout user button clicked --> user profile page (login form)
  get 'logout' => 'users#handle_logout'

########### BOAT #################
  # New boat button clicked --> new boat page
  get 'newboat' => 'boats#new'

  # New boat form filled --> user profile page
  post 'newboat' => 'boats#handle_create'

  # Boat button clicked --> boat profile page
  get 'boatprofile' => 'boats#profile'

  # Edit boat button clicked --> edit boat profile
  get 'editboat' => 'boats#edit'

  # Edit boat form filled --> boat profile page
  put 'editboat' => 'boats#handle_update'

  # Delete boat button clicked --> user profile page
  destroy 'boatprofile' => 'boats#handle_delete'

########### JOB #################
  # New job button clicked --> new job page
  get 'newjob' => 'jobs#new'

  # New job form filled --> boat profile page
  post 'newjob' => 'jobs#handle_create'

  # Job button clicked --> job profile page
  get 'jobprofile' => 'jobs#profile'

  # Edit job button clicked --> edit job profile
  get 'editjob' => 'jobs#edit'

  # Edit job form filled --> job profile page
  put 'editjob' => 'jobs#handle_update'

  # Delete job button clicked --> boat profile page
  destroy 'jobprofile' => 'jobs#handle_delete'


end
