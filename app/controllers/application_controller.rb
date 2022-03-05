class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  def after_sign_in_path_for(resource)
    root_path
    # if current_user.has_role?(:admin)
    #  dashboard_path
    # elsif current_user.has_role?(:student)
    #  root_path
    # else
    #  root_path
    # end
   end

   def after_sign_out_path_for(resource)
    new_user_session_path
  end
end
