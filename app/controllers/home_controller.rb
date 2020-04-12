class HomeController < ApplicationController
    def index
        @products = Product.all.with_rich_text_body
    end
    def search
        word = "%#{params[:search]}"
        @products = Product.where("title LIKE ? OR body LIKE ? OR info LIKE ? OR address LIKE ? OR palabras LIKE ?", word, word, word, word, word)
    end
end
