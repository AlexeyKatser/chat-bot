class SituaionsController < ApplicationController
  before_action :set_situaion, only: [:show, :edit, :update, :destroy]

  # GET /situaions
  # GET /situaions.json
  def index
    @situaions = Situaion.all
  end

  # GET /situaions/1
  # GET /situaions/1.json
  def show
  end

  # GET /situaions/new
  def new
    @situaion = Situaion.new
  end

  # GET /situaions/1/edit
  def edit
  end

  # POST /situaions
  # POST /situaions.json
  def create
    @situaion = Situaion.new(situaion_params)

    respond_to do |format|
      if @situaion.save
        format.html { redirect_to @situaion, notice: 'Situaion was successfully created.' }
        format.json { render :show, status: :created, location: @situaion }
      else
        format.html { render :new }
        format.json { render json: @situaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /situaions/1
  # PATCH/PUT /situaions/1.json
  def update
    respond_to do |format|
      if @situaion.update(situaion_params)
        format.html { redirect_to @situaion, notice: 'Situaion was successfully updated.' }
        format.json { render :show, status: :ok, location: @situaion }
      else
        format.html { render :edit }
        format.json { render json: @situaion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /situaions/1
  # DELETE /situaions/1.json
  def destroy
    @situaion.destroy
    respond_to do |format|
      format.html { redirect_to situaions_url, notice: 'Situaion was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_situaion
      @situaion = Situaion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def situaion_params
      params.require(:situaion).permit(:s_name, :s_type, :s_description, :s_role, :s_price)
    end
end
