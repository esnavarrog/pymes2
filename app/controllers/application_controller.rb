require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html

    before_action :set_categories
    before_action :set_products
    before_action :set_user_rich_text, only: [:show, :new, :edit]
    before_action :configure_devise_params, if: :devise_controller?

    def new_session_path(scope)
        new_user_session_path
    end


    private

    def configure_devise_params
        devise_parameter_sanitizer.permit(:account_update) {|u| u.permit(:name, :biografia, :lastname, :date_of_birth, :country, :image, :email, :password, :password_confirmation)}
        devise_parameter_sanitizer.permit(:sign_up) {|admin| admin.permit(:name, :biografia, :lastname, :date_of_birth, :country, :image, :email, :password, :password_confirmation)}
    end

    def set_user_rich_text
        @users = User.all.with_rich_text_biografia
    end

    def set_categories
        @categories = Category.all
    end

    def set_products
        @products = Product.all
    end
end
