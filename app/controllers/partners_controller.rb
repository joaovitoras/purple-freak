class PartnersController < ActionController::API
  before_action :set_partner, only: [:show, :update, :destroy]

  # GET /partners
  # GET /partners.json
  def index
    @partners = Partner.all
  end

  # GET /partners/1
  # GET /partners/1.json
  def show
  end

  # POST /partners
  # POST /partners.json
  def create
    @partner = Partner.new(partner_params)

    if @partner.save
      render :show, status: :created, location: @partner
    else
      render json: @partner.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /partners/1
  # PATCH/PUT /partners/1.json
  def update
    if @partner.update(partner_params)
      render :show, status: :ok, location: @partner
    else
      render json: @partner.errors, status: :unprocessable_entity
    end
  end

  # DELETE /partners/1
  # DELETE /partners/1.json
  def destroy
    @partner.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_partner
      @partner = Partner.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def partner_params
      params.require(:partner).permit(:name, :url, :enabled)
    end
end
