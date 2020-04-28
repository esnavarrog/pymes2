class ProductsController < ApplicationController
  before_action :set_product, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]
  # GET /products
  # GET /products.json
  def index
    @products = Product.all.with_rich_text_body
    @product = Product.new

  end




  # GET /products/1
  # GET /products/1.json
  def show
    @list = List.new
    @pop = Pop.new
    @comment = Comment.new
    @message = Message.new
    @articles = Article.new
    @links = Link.all
    @lists = List.all
    @pops = @list.pops.all
    @messages = @product.messages.all
    @articles = @product.articles.all
    @comments = @product.comments.all.order(:created_at)
    @product.update_visits_count
  end

  # GET /products/new
  def new
    @product = Product.new
    # @categories = Category.all
  end

  # GET /products/1/edit
  def edit
  end

  # POST /products
  # POST /products.json
  def create
    @product = Product.new(product_params)
    @product.user = current_user
    respond_to do |format|
      if @product.save

        format.html {redirect_to @product, notice: 'Negocio creado correctamente.'} 
        format.json { render :show, status: :created, location: @product }

      else
        format.html {render :new}
        format.json { render json: @product.errors, status: :unprocessable_entity }

      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @product.update(product_params)
        format.html { redirect_to @product, notice: 'Actualizaste correctamente tu información.' }
        format.json { render :show, status: :ok, location: @product }
      else
        format.html { render :edit }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product.destroy
    respond_to do |format|
      format.html { redirect_to home_index_url, notice: 'Product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:id])
    end





    

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
      params.require(:product).permit(:mobil1, :mobil2, :title, :view, :body, :img, :phone, :email, :address, :facebook, :twitter, :instagram, :web, :palabras, :info, :horaA, :minA, :horaC, :minC, :tiempoEspera, :categories ,:lunesA, :lunesC, :martesA, :martesC, :miercolesA, :miercolesC, :juevesA, :juevesC, :viernesA, :viernesC, :sabadoA, :sabadoC, :domingoA, :domingoC, :latitude, :longitude, :efectivo, :transferencia, :credito, :debito, :delivery)
    end
end
