class ApplicationController < ActionController::Base

    def welcome
    end

    def admin_only
        unless current_user.admin
            flash[:notice] = "You must be an admin to perform that function!"
            redirect_to user_session_path(current_user)
        end
    end
end
