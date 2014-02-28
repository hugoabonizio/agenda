class BrainstormsController < ApplicationController
  before_action :set_brainstorm, only: [:show, :edit, :update, :destroy]

  # GET /brainstorms
  # GET /brainstorms.json
  def index
    @brainstorms = Brainstorm.all
  end

  # GET /brainstorms/1
  # GET /brainstorms/1.json
  def show
  end

  # GET /brainstorms/new
  def new
    @brainstorm = Brainstorm.new
  end

  # GET /brainstorms/1/edit
  def edit
  end

  # POST /brainstorms
  # POST /brainstorms.json
  def create
    @brainstorm = Brainstorm.new(brainstorm_params)

    respond_to do |format|
      if @brainstorm.save
        format.html { redirect_to @brainstorm, notice: 'Brainstorm was successfully created.' }
        format.json { render action: 'show', status: :created, location: @brainstorm }
      else
        format.html { render action: 'new' }
        format.json { render json: @brainstorm.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /brainstorms/1
  # PATCH/PUT /brainstorms/1.json
  def update
    respond_to do |format|
      if @brainstorm.update(brainstorm_params)
        format.html { redirect_to @brainstorm, notice: 'Brainstorm was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @brainstorm.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /brainstorms/1
  # DELETE /brainstorms/1.json
  def destroy
    @brainstorm.destroy
    respond_to do |format|
      format.html { redirect_to brainstorms_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_brainstorm
      @brainstorm = Brainstorm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def brainstorm_params
      params.require(:brainstorm).permit(:idea, :annotations)
    end
end
