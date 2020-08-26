class StudentTestimoniesController < ApplicationController
  before_action :set_student_testimony, only: [:show, :update, :destroy]

  # GET /student_testimonies
  # GET /student_testimonies.json
  def index
    @student_testimonies = StudentTestimony.all
  end

  # GET /student_testimonies/1
  # GET /student_testimonies/1.json
  def show
  end

  # POST /student_testimonies
  # POST /student_testimonies.json
  def create
    @student_testimony = StudentTestimony.new(student_testimony_params)

    if @student_testimony.save
      render :show, status: :created, location: @student_testimony
    else
      render json: @student_testimony.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /student_testimonies/1
  # PATCH/PUT /student_testimonies/1.json
  def update
    if @student_testimony.update(student_testimony_params)
      render :show, status: :ok, location: @student_testimony
    else
      render json: @student_testimony.errors, status: :unprocessable_entity
    end
  end

  # DELETE /student_testimonies/1
  # DELETE /student_testimonies/1.json
  def destroy
    @student_testimony.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_testimony
      @student_testimony = StudentTestimony.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def student_testimony_params
      params.require(:student_testimony).permit(:type, :url, :text, :full_name, :email, :status)
    end
end
