class ClothsController < ApplicationController
  before_action :set_cloth, only: [:show, :edit, :update, :destroy]

  def men_top
    if params[:query]
      @cloths = Cloth.search(params[:query]).order("created_at DESC").page params[:page]
    else
      @cloths = Cloth.where(:sex =>'m').order("created_at DESC").page params[:page]
      # @cloths = Cloth.order("created_at DESC")
    end
  end
  
  def men_bottom
  end

  def men_jeans
  end
  def men_shoes
  end
  # GET /cloths
  # GET /cloths.json
  def index
    @cloth_page = nil
    if params[:query]
      @cloths = Cloth.search(params[:query]).order("created_at DESC").page params[:page]
    else
      @cloths = Cloth.where(:sex =>'w').order("created_at DESC").page params[:page]
      # @cloths = Cloth.order("created_at DESC").page params[:page]
    end
  end
  


  # GET /cloths/1
  # GET /cloths/1.json
  def show
    @reviews = Review.order("RANDOM()").page(params[:page]).per(8)
  end

  # GET /cloths/new
  def new
    @cloth = Cloth.new
  end

  # GET /cloths/1/edit
  def edit
  end
  
  

  # POST /cloths
  # POST /cloths.json
  def create
    @cloth = Cloth.new(cloth_params)

    respond_to do |format|
      if @cloth.save
        format.html { redirect_to @cloth, notice: '' }
        format.json { render :show, status: :created, location: @cloth }
      else
        format.html { render :new }
        format.json { render json: @cloth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cloths/1
  # PATCH/PUT /cloths/1.json
  def update
    respond_to do |format|
      if @cloth.update(cloth_params)
        format.html { redirect_to @cloth, notice: '' }
        format.json { render :show, status: :ok, location: @cloth }
      else
        format.html { render :edit }
        format.json { render json: @cloth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cloths/1
  # DELETE /cloths/1.json
  def destroy
    @cloth.destroy
    respond_to do |format|
      format.html { redirect_to cloths_url, notice: 'Cloth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end
  

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cloth
      @cloth = Cloth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cloth_params
      params.require(:cloth).permit(:sex, :category, :name, :size, :price, :brand, :image1, :image2, :image3, :image4)
    end
    
    
end
