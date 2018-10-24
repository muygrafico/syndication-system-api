class PurchasesController < ApplicationController
  before_action :set_purchase, only: [:show, :update, :destroy]

  # GET /purchases
  def index
    # @purchases = Purchase.all
    # @purchases = Purchase.where(business_product_id: params[:product_id])
    @Product_id = Product.find_by(business_product_id: params[:product_id]).id
    @purchases = Purchase.where(product_id: @Product_id)
    @json_string = PurchaseSerializer.new(@purchases).serialized_json
    render json: @json_string
  end

  # GET /purchases/1
  def show
    render json: @purchase
  end

  # POST /purchases
  def create
    @purchase = Purchase.new(purchase_params)

    if @purchase.save
      render json: @purchase, status: :created, location: @purchase
    else
      render json: @purchase.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /purchases/1
  def update
    if @purchase.update(purchase_params)
      render json: @purchase
    else
      render json: @purchase.errors, status: :unprocessable_entity
    end
  end

  # DELETE /purchases/1
  def destroy
    @purchase.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase
      @purchase = Purchase.find_by(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def purchase_params
      params.require(:purchase).permit(:investor, :sold)
    end
end
