class JewelDataController < ApplicationController
  before_action :set_jewel_datum, only: %i[ show edit update destroy ]

  before_action :authenticate_user!, except:[:index, :show]

  before_action :correct_user,only: [:show, :edit, :destroy]

  # GET /jewel_data or /jewel_data.json
  def index
    @jewel_data = JewelDatum.all
  end

  # GET /jewel_data/1 or /jewel_data/1.json
  def show
  end


  def correct_user
    puts current_user.jewel_datum.find_by(id: params[:id])
    
  end

  # GET /jewel_data/new
  def new
    # @jewel_datum = JewelDatum.new

    @jewel_datum=current_user.jewel_datum.build
  end

  # GET /jewel_data/1/edit
  def edit
  end

  # POST /jewel_data or /jewel_data.json
  def create
    # @jewel_datum = JewelDatum.new(jewel_datum_params)
    @jewel_datum=current_user.jewel_datum.build(jewel_datum_params)
    respond_to do |format|
      if @jewel_datum.save
        format.html { redirect_to jewel_datum_url(@jewel_datum), notice: "Jewel datum was successfully created." }
        format.json { render :show, status: :created, location: @jewel_datum }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @jewel_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jewel_data/1 or /jewel_data/1.json
  def update
    respond_to do |format|
      if @jewel_datum.update(jewel_datum_params)
        format.html { redirect_to jewel_datum_url(@jewel_datum), notice: "Jewel datum was successfully updated." }
        format.json { render :show, status: :ok, location: @jewel_datum }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @jewel_datum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jewel_data/1 or /jewel_data/1.json
  def destroy
    @jewel_datum.destroy

    respond_to do |format|
      format.html { redirect_to jewel_data_url, notice: "Jewel datum was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_jewel_datum
      @jewel_datum = JewelDatum.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def jewel_datum_params
      params.require(:jewel_datum).permit(:user_id, :jewelId, :jewelName, :jewelPrice, :dateofpurchase)
    end
end
