class NonprofitsController < ApplicationController
  before_action :set_nonprofit, only: [:show, :edit, :update, :destroy]

  # GET /nonprofits
  # GET /nonprofits.json
  def index
    @nonprofits = Nonprofit.all
  end

  # GET /nonprofits/1
  # GET /nonprofits/1.json
  def show
  end

  # GET /nonprofits/new
  def new
    @nonprofit = Nonprofit.new
  end

  # GET /nonprofits/1/edit
  def edit
  end

  # POST /nonprofits
  # POST /nonprofits.json
  def create
    @nonprofit = Nonprofit.new(nonprofit_params)

    respond_to do |format|
      if @nonprofit.save
        format.html { redirect_to @nonprofit, notice: 'Nonprofit was successfully created.' }
        format.json { render :show, status: :created, location: @nonprofit }
      else
        format.html { render :new }
        format.json { render json: @nonprofit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /nonprofits/1
  # PATCH/PUT /nonprofits/1.json
  def update
    respond_to do |format|
      if @nonprofit.update(nonprofit_params)
        format.html { redirect_to @nonprofit, notice: 'Nonprofit was successfully updated.' }
        format.json { render :show, status: :ok, location: @nonprofit }
      else
        format.html { render :edit }
        format.json { render json: @nonprofit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nonprofits/1
  # DELETE /nonprofits/1.json
  def destroy
    @nonprofit.destroy
    respond_to do |format|
      format.html { redirect_to nonprofits_url, notice: 'Nonprofit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nonprofit
      @nonprofit = Nonprofit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def nonprofit_params
      params.require(:nonprofit).permit(:name)
    end
end
