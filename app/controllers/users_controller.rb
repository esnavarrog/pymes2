class UsersController < ApplicationController
    before_action :set_users

    def show
        
    end
    def new
        super
    end

    def edit
        super
    end

    private

    def set_users
        @user = User.find(params[:id])
    end

end