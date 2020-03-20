class ApplicationController < ActionController::Base
    before_action :set_categories
    before_action :set_products

    def new_session_path(scope)
        new_user_session_path
    end


    private

    def set_categories
        @categories = Category.all
    end

    def set_products
        @products = Product.all
    end
end
