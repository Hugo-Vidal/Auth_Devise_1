module UsersHelper
    def logged?
        if session[:user_id].present?
            true
        else
            false
        end
    end

    def current_user
        User.find(session[:user_id])
    end
end
