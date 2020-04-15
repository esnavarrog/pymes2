class UsersController < ApplicationController
    

    def show
        @user = User.find(params[:id])
    end
    def index
        if user_signed_in?
            redirect_to root_path
        else
            redirect_to new_user_session_path
        end
    end


    private

    def set_users
        @user = User.find(params[:id])
    end

end