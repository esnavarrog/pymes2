class PopsController < ApplicationController
  before_action :set_pop, only: [:show, :edit, :update, :destroy]
  before_action :set_list, except: [:show, :index]

  # GET /pops
  # GET /pops.json
  def index
    @pops = Pop.all
  end

  # GET /pops/1
  # GET /pops/1.json
  def show
  end

  # GET /pops/new
  def new
    @pop = Pop.new
  end

  # GET /pops/1/edit
  def edit
  end

  # POST /pops
  # POST /pops.json
  def create
    @pop = Pop.new(pop_params)
    @pop.list = @list

    respond_to do |format|
      if @pop.save
        format.html { redirect_to @list, notice: 'Pop was successfully created.' }
        format.json { render :show, status: :created, location: @pop }
      else
        format.html { render :new }
        format.json { render json: @pop.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pops/1
  # PATCH/PUT /pops/1.json
  def update
    respond_to do |format|
      if @pop.update(pop_params)
        format.html { redirect_to @pop, notice: 'Pop was successfully updated.' }
        format.json { render :show, status: :ok, location: @pop }
      else
        format.html { render :edit }
        format.json { render json: @pop.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pops/1
  # DELETE /pops/1.json
  def destroy
    @pop.destroy
    respond_to do |format|
      format.html { redirect_to @list, notice: 'Pop was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pop
      @pop = Pop.find(params[:id])
    end

    def set_list
      @list = List.find(params[:list_id])
    end



    

    # Never trust parameters from the scary internet, only allow the white list through.
    def pop_params
      params.require(:pop).permit(:title, :destacado, :descripcion, :precio, :avatar)
    end
end
