class ProductCategorizationsController < ApplicationController
  before_action :set_product_categorization, only: [:show, :edit, :update, :destroy]

  # GET /product_categorizations
  # GET /product_categorizations.json
  def index
    @product_categorizations = ProductCategorization.all
  end

  # GET /product_categorizations/1
  # GET /product_categorizations/1.json
  def show
  end

  # GET /product_categorizations/new
  def new
    @product_categorization = ProductCategorization.new
  end

  # GET /product_categorizations/1/edit
  def edit
  end

  # POST /product_categorizations
  # POST /product_categorizations.json
  def create
    @product_categorization = ProductCategorization.new(product_categorization_params)

    respond_to do |format|
      if @product_categorization.save
        format.html { redirect_to @product_categorization, notice: 'Product categorization was successfully created.' }
        format.json { render :show, status: :created, location: @product_categorization }
      else
        format.html { render :new }
        format.json { render json: @product_categorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /product_categorizations/1
  # PATCH/PUT /product_categorizations/1.json
  def update
    respond_to do |format|
      if @product_categorization.update(product_categorization_params)
        format.html { redirect_to @product_categorization, notice: 'Product categorization was successfully updated.' }
        format.json { render :show, status: :ok, location: @product_categorization }
      else
        format.html { render :edit }
        format.json { render json: @product_categorization.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /product_categorizations/1
  # DELETE /product_categorizations/1.json
  def destroy
    @product_categorization.destroy
    respond_to do |format|
      format.html { redirect_to product_categorizations_url, notice: 'Product categorization was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product_categorization
      @product_categorization = ProductCategorization.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_categorization_params
      params.fetch(:product_categorization, {})
    end
end
