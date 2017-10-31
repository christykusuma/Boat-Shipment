Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # First page: user profile page
  root 'user#profile'

  # Login form filled --> user profile page
  post 'login' => 'users#login'

  # New user button clicked --> sign up page
  get 'login' => 'users#signup'

  # Sign up form filled --> user profile page
  post 'signup' => 'users#signup'

  # User profile edit clicked --> edit user profile
  # get 

  # Edit user form filled --> user profile page
  # put

  # New boat button clicked --> new boat page
  # get

  # New boat form filled --> user profile page
  # post

  # Boat button clicked --> boat profile page
  # get

  # Edit boat button clicked --> edit boat profile
  # get

  # Edit boat form filled --> boat profile page
  # put

  # New job button clicked --> new job page
  # get

  # New job form filled --> boat profile page
  # post

  # Job button clicked --> job profile page
  # get

  # Edit job button clicked --> edit job profile
  # get

  # Edit job form filled --> job profile page
  # put

  # Logout user button clicked --> user profile page (login form)
  # get


end
