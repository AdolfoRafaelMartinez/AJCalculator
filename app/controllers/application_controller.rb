class ApplicationController < ActionController::Base
<<<<<<< HEAD
  protect_from_forgery
=======
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
>>>>>>> 5086c8769f65b2117c8aaa7ebea749ab53bac3cf
end
