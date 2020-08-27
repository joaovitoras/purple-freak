class LeadsController < ApplicationController
  before_action :set_lead, only: [:show, :update, :destroy]

  # GET /leads
  # GET /leads.json
  def index
    @leads = Lead.order(signed_at: :desc).limit(3)
  end

  # GET /leads/1
  # GET /leads/1.json
  def show
  end

  # POST /leads
  # POST /leads.json
  def create
    @lead = Lead.new(lead_params)

    if @lead.save
      render :show, status: :created, location: @lead
    else
      render json: @lead.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /leads/1
  # PATCH/PUT /leads/1.json
  def update
    if @lead.update(lead_params)
      render :show, status: :ok, location: @lead
    else
      render json: @lead.errors, status: :unprocessable_entity
    end
  end

  # DELETE /leads/1
  # DELETE /leads/1.json
  def destroy
    @lead.destroy
  end

  # GET /leads-overview
  def overview
    leads_count = Lead.count

    render json: { leads_count: leads_count}
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lead
      @lead = Lead.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def lead_params
      params.
        require(:lead).
        permit(:full_name, :signed_at, :email, :profession).
        with_defaults(signed_at: Time.current)
    end
end
