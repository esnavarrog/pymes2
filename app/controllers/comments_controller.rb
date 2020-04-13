class CommentsController < ApplicationController
    before_action :set_product, only: [:create, :destroy, :show]

    before_action :authenticate_user!

    def new
        @comment = Comment.new
    end

    def create
        @comment = Comment.new(comment_params)
        @comment.user = current_user
        @comment.product = @product
        respond_to do |format|
          if @comment.save
            format.html { redirect_to @product }
            format.json { render :show, status: :created, location: @comment.product }
            format.js
          else
            format.html { redirect_to @product }
            format.json { render json: @comment.errors, status: :unprocessable_entity }
            format.js
          end
        end
    end
     
    private

    def set_product
        @product = Product.find(params[:product_id])
    end

    def comment_params
        params.require(:comment).permit(:body)
    end
end
