class AdminController < ApplicationController
  before_filter :check_admin
  def check_admin
    if !current_user.admin?
      redirect_to movies_path
      flash[:alert] = "acceso restringido"
    end
  end
end