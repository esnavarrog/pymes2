class HomeController < ApplicationController
    def index
        @products = Product.all.with_rich_text_body
        if params[:body].present?
            @products = @products.where("body ILIKE ?", "%#{params[:body]}%")
        end
        
    end
    def search
        word = "%#{params[:search]}"
        @products = Product.where("title LIKE ? OR body LIKE ? OR info LIKE ? OR address LIKE ?", word, word, word, word)
    end
end
