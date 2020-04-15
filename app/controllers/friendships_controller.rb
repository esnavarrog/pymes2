class FriendshipsController < ApplicationController
    before_action :authenticate_user!
    before_action :find_user

    def create
        current_user.follow(@product)
        redirect_to @product
    end
    def destroy
        current_user.unfollow(@product)
        redirect_to @product
    end

    private

    def find_user
        @product = Product.find(params[:product_id])
    end

end
