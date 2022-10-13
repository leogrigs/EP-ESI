class UserAreasController < ApplicationController
  before_action :set_user_area, only: %i[ show edit update destroy ]

  # GET /user_areas or /user_areas.json
  def index
    @user_areas = UserArea.all
  end

  # GET /user_areas/1 or /user_areas/1.json
  def show
  end

  # GET /user_areas/new
  def new
    @user_area = UserArea.new
  end

  # GET /user_areas/1/edit
  def edit
  end

  # POST /user_areas or /user_areas.json
  def create
    @user_area = UserArea.new(user_area_params)

    respond_to do |format|
      if @user_area.save
        format.html { redirect_to user_area_url(@user_area), notice: "User area was successfully created." }
        format.json { render :show, status: :created, location: @user_area }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @user_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_areas/1 or /user_areas/1.json
  def update
    respond_to do |format|
      if @user_area.update(user_area_params)
        format.html { redirect_to user_area_url(@user_area), notice: "User area was successfully updated." }
        format.json { render :show, status: :ok, location: @user_area }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @user_area.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_areas/1 or /user_areas/1.json
  def destroy
    @user_area.destroy

    respond_to do |format|
      format.html { redirect_to user_areas_url, notice: "User area was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_area
      @user_area = UserArea.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_area_params
      params.fetch(:user_area, {})
    end
end
