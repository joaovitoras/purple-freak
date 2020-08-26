class FamousTestimoniesController < ApplicationController
  before_action :set_famous_testimony, only: [:show, :update, :destroy]

  # GET /famous_testimonies
  # GET /famous_testimonies.json
  def index
    @famous_testimonies = FamousTestimony.all
  end

  # GET /famous_testimonies/1
  # GET /famous_testimonies/1.json
  def show
  end

  # POST /famous_testimonies
  # POST /famous_testimonies.json
  def create
    @famous_testimony = FamousTestimony.new(famous_testimony_params)

    if @famous_testimony.save
      render :show, status: :created, location: @famous_testimony
    else
      render json: @famous_testimony.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /famous_testimonies/1
  # PATCH/PUT /famous_testimonies/1.json
  def update
    if @famous_testimony.update(famous_testimony_params)
      render :show, status: :ok, location: @famous_testimony
    else
      render json: @famous_testimony.errors, status: :unprocessable_entity
    end
  end

  # DELETE /famous_testimonies/1
  # DELETE /famous_testimonies/1.json
  def destroy
    @famous_testimony.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_famous_testimony
      @famous_testimony = FamousTestimony.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def famous_testimony_params
      params.require(:famous_testimony).permit(:url, :full_name, :enabled)
    end
end
