class ApplicationController < ActionController::API
    def current_user(user)
        @user = user
    end
end
