class CopypastesController < ApplicationController
  before_action :set_copypaste, only: [:show, :edit, :update, :destroy]

  # GET /copypastes
  # GET /copypastes.json
  def index
    @copypastes = Copypaste.all
  end

  # GET /copypastes/1
  # GET /copypastes/1.json
  def show
  end

  # GET /copypastes/new
  def new
    @copypaste = Copypaste.new
  end

  # GET /copypastes/1/edit
  def edit
  end

  # POST /copypastes
  # POST /copypastes.json
  def create
    @copypaste = Copypaste.new(copypaste_params)

    respond_to do |format|
      if @copypaste.save
        format.html { redirect_to @copypaste, notice: 'Copypaste was successfully created.' }
        format.json { render action: 'show', status: :created, location: @copypaste }
      else
        format.html { render action: 'new' }
        format.json { render json: @copypaste.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /copypastes/1
  # PATCH/PUT /copypastes/1.json
  def update
    respond_to do |format|
      if @copypaste.update(copypaste_params)
        format.html { redirect_to @copypaste, notice: 'Copypaste was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @copypaste.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /copypastes/1
  # DELETE /copypastes/1.json
  def destroy
    @copypaste.destroy
    respond_to do |format|
      format.html { redirect_to copypastes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_copypaste
      @copypaste = Copypaste.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def copypaste_params
      params.require(:copypaste).permit(:content)
    end
end
