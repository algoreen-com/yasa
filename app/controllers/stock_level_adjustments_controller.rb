class StockLevelAdjustmentsController < ApplicationController
  before_action :set_stock_level_adjustment, only: [:show, :edit, :update, :destroy]

  # GET /stock_level_adjustments
  # GET /stock_level_adjustments.json
  def index
    @stock_level_adjustments = StockLevelAdjustment.all
  end

  # GET /stock_level_adjustments/1
  # GET /stock_level_adjustments/1.json
  def show
  end

  # GET /stock_level_adjustments/new
  def new
    @stock_level_adjustment = StockLevelAdjustment.new
  end

  # GET /stock_level_adjustments/1/edit
  def edit
  end

  # POST /stock_level_adjustments
  # POST /stock_level_adjustments.json
  def create
    @stock_level_adjustment = StockLevelAdjustment.new(stock_level_adjustment_params)

    respond_to do |format|
      if @stock_level_adjustment.save
        format.html { redirect_to @stock_level_adjustment, notice: 'Stock level adjustment was successfully created.' }
        format.json { render :show, status: :created, location: @stock_level_adjustment }
      else
        format.html { render :new }
        format.json { render json: @stock_level_adjustment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_level_adjustments/1
  # PATCH/PUT /stock_level_adjustments/1.json
  def update
    respond_to do |format|
      if @stock_level_adjustment.update(stock_level_adjustment_params)
        format.html { redirect_to @stock_level_adjustment, notice: 'Stock level adjustment was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_level_adjustment }
      else
        format.html { render :edit }
        format.json { render json: @stock_level_adjustment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_level_adjustments/1
  # DELETE /stock_level_adjustments/1.json
  def destroy
    @stock_level_adjustment.destroy
    respond_to do |format|
      format.html { redirect_to stock_level_adjustments_url, notice: 'Stock level adjustment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_level_adjustment
      @stock_level_adjustment = StockLevelAdjustment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_level_adjustment_params
      params.fetch(:stock_level_adjustment, {})
    end
end
