class SubgroupsController < ApplicationController
  before_action :set_subgroup, only: [:show, :edit, :update, :destroy]

  # GET /subgroups
  # GET /subgroups.json
  def index
    @subgroups = Subgroup.all
  end

  # GET /subgroups/1
  # GET /subgroups/1.json
  def show
  end

  # GET /subgroups/new
  def new
    @subgroup = Subgroup.new
  end

  # GET /subgroups/1/edit
  def edit
  end

  # POST /subgroups
  # POST /subgroups.json
  def create
    @subgroup = Subgroup.new(subgroup_params)

    respond_to do |format|
      if @subgroup.save
        format.html { redirect_to @subgroup, notice: 'Subgroup was successfully created.' }
        format.json { render :show, status: :created, location: @subgroup }
      else
        format.html { render :new }
        format.json { render json: @subgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subgroups/1
  # PATCH/PUT /subgroups/1.json
  def update
    respond_to do |format|
      if @subgroup.update(subgroup_params)
        format.html { redirect_to @subgroup, notice: 'Subgroup was successfully updated.' }
        format.json { render :show, status: :ok, location: @subgroup }
      else
        format.html { render :edit }
        format.json { render json: @subgroup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subgroups/1
  # DELETE /subgroups/1.json
  def destroy
    @subgroup.destroy
    respond_to do |format|
      format.html { redirect_to subgroups_url, notice: 'Subgroup was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subgroup
      @subgroup = Subgroup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subgroup_params
      params.require(:subgroup).permit(:name)
    end
end
