class ApplicationController < ActionController::Base
    before_action :set_categories
    before_action :set_products


    private

    def set_categories
        @categories = Category.all
    end

    def set_products
        @products = Product.all
    end
end
