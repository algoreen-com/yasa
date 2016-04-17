class DeliveryServicesController < ApplicationController
  before_action :set_delivery_service, only: [:show, :edit, :update, :destroy]

  # GET /delivery_services
  # GET /delivery_services.json
  def index
    @delivery_services = DeliveryService.all
  end

  # GET /delivery_services/1
  # GET /delivery_services/1.json
  def show
  end

  # GET /delivery_services/new
  def new
    @delivery_service = DeliveryService.new
  end

  # GET /delivery_services/1/edit
  def edit
  end

  # POST /delivery_services
  # POST /delivery_services.json
  def create
    @delivery_service = DeliveryService.new(delivery_service_params)

    respond_to do |format|
      if @delivery_service.save
        format.html { redirect_to @delivery_service, notice: 'Delivery service was successfully created.' }
        format.json { render :show, status: :created, location: @delivery_service }
      else
        format.html { render :new }
        format.json { render json: @delivery_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /delivery_services/1
  # PATCH/PUT /delivery_services/1.json
  def update
    respond_to do |format|
      if @delivery_service.update(delivery_service_params)
        format.html { redirect_to @delivery_service, notice: 'Delivery service was successfully updated.' }
        format.json { render :show, status: :ok, location: @delivery_service }
      else
        format.html { render :edit }
        format.json { render json: @delivery_service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /delivery_services/1
  # DELETE /delivery_services/1.json
  def destroy
    @delivery_service.destroy
    respond_to do |format|
      format.html { redirect_to delivery_services_url, notice: 'Delivery service was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_delivery_service
      @delivery_service = DeliveryService.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def delivery_service_params
      params.fetch(:delivery_service, {})
    end
end
