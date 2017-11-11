  class SampleappsController < ApplicationController
  before_action :set_sampleapp, only: [:show, :edit, :update, :destroy]
  helper_method :sort_column, :sort_direction
  # GET /sampleapps
  # GET /sampleapps.json
  def index
    #print "SSSSSSSSSSS"
    #p params["search"]
       # @sampleapps = Sampleapp.where("name like %?%", params[:search])
     @sampleapps = Sampleapp.order(sort_column + " " + sort_direction)
  end

  # GET /sampleapps/1
  # GET /sampleapps/1.json
  def show
  end

  # GET /sampleapps/new
  def new
    @sampleapp = Sampleapp.new
  end

  # GET /sampleapps/1/edit
  def edit
  end

  # POST /sampleapps
  # POST /sampleapps.json
  def create
    @sampleapp = Sampleapp.new(sampleapp_params)

    respond_to do |format|
      if @sampleapp.save
        format.html { redirect_to @sampleapp, notice: 'Sampleapp was successfully created.' }
        format.json { render :show, status: :created, location: @sampleapp }
      else
        format.html { render :new }
        format.json { render json: @sampleapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sampleapps/1
  # PATCH/PUT /sampleapps/1.json
  def update
    respond_to do |format|
      if @sampleapp.update(sampleapp_params)
        format.html { redirect_to @sampleapp, notice: 'Sampleapp was successfully updated.' }
        format.json { render :show, status: :ok, location: @sampleapp }
      else
        format.html { render :edit }
        format.json { render json: @sampleapp.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sampleapps/1
  # DELETE /sampleapps/1.json
  def destroy

    @sampleapp.destroy
  
      redirect_to sampleapps_path, notice: 'Sampleapp was successfully destroyed.' 
    
    
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sampleapp
      @sampleapp = Sampleapp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def sampleapp_params
      params.require(:sampleapp).permit(:Fname, :Lname, :Gender, :Address, :Country)
    end

    def sort_column
      Sampleapp.column_names.include?(params[:sort]) ? params[:sort] : "Fname"
    end
  
    def sort_direction
     %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
    end
end