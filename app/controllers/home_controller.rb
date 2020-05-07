class HomeController < ApplicationController
    def index
        @products = Product.all.with_rich_text_body
    end
    def search
        word = "%#{params[:search]}"
        @products = Product.where("title ILIKE ? OR palabras ILIKE ?", word, word)
    end
end
