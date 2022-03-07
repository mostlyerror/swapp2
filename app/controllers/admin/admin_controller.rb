class Admin::AdminController < ApplicationController
  before_action :require_admin

  def require_admin
    unless current_user.has_role? :admin
      redirect_to root_path
    end
  end
end
