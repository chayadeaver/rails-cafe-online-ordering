class RegistrationsController < Devise::RegistrationsController
    private
        def sign_up_params
            params.require(:users).permit(:name, :email, :password, :password_confirmation, :admin)
        end

        def account_update_params
            
        end
end
