class DeliveryServicePricesController < ApplicationController
  before_action :set_delivery_service_price, only: [:show, :edit, :update, :destroy]

  # GET /delivery_service_prices
  # GET /delivery_service_prices.json
  def index
    @delivery_service_prices = DeliveryServicePrice.all
  end

  # GET /delivery_service_prices/1
  # GET /delivery_service_prices/1.json
  def show
  end

  # GET /delivery_service_prices/new
  def new
    @delivery_service_price = DeliveryServicePrice.new
  end

  # GET /delivery_service_prices/1/edit
  def edit
  end

  # POST /delivery_service_prices
  # POST /delivery_service_prices.json
  def create
    @delivery_service_price = DeliveryServicePrice.new(delivery_service_price_params)

    respond_to do |format|
      if @delivery_service_price.save
        format.html { redirect_to @delivery_service_price, notice: 'Delivery service price was successfully created.' }
        format.json { render :show, status: :created, location: @delivery_service_price }
      else
        format.html { render :new }
        format.json { render json: @delivery_service_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_service_prices/1
  # PATCH/PUT /delivery_service_prices/1.json
  def update
    respond_to do |format|
      if @delivery_service_price.update(delivery_service_price_params)
        format.html { redirect_to @delivery_service_price, notice: 'Delivery service price was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery_service_price }
      else
        format.html { render :edit }
        format.json { render json: @delivery_service_price.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_service_prices/1
  # DELETE /delivery_service_prices/1.json
  def destroy
    @delivery_service_price.destroy
    respond_to do |format|
      format.html { redirect_to delivery_service_prices_url, notice: 'Delivery service price was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_service_price
      @delivery_service_price = DeliveryServicePrice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_service_price_params
      params.fetch(:delivery_service_price, {})
    end
end
