class MoveMusclesController < ApplicationController
  before_action :set_move_muscle, only: [:show, :edit, :update, :destroy]

  # GET /move_muscles
  # GET /move_muscles.json
  def index
    @move_muscles = MoveMuscle.all
  end

  # GET /move_muscles/1
  # GET /move_muscles/1.json
  def show
  end

  # GET /move_muscles/new
  def new
    @move_muscle = MoveMuscle.new
  end

  # GET /move_muscles/1/edit
  def edit
  end

  # POST /move_muscles
  # POST /move_muscles.json
  def create
    @move_muscle = MoveMuscle.new(move_muscle_params)

    respond_to do |format|
      if @move_muscle.save
        format.html { redirect_to @move_muscle, notice: 'Move muscle was successfully created.' }
        format.json { render action: 'show', status: :created, location: @move_muscle }
      else
        format.html { render action: 'new' }
        format.json { render json: @move_muscle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /move_muscles/1
  # PATCH/PUT /move_muscles/1.json
  def update
    respond_to do |format|
      if @move_muscle.update(move_muscle_params)
        format.html { redirect_to @move_muscle, notice: 'Move muscle was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @move_muscle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /move_muscles/1
  # DELETE /move_muscles/1.json
  def destroy
    @move_muscle.destroy
    respond_to do |format|
      format.html { redirect_to move_muscles_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_move_muscle
      @move_muscle = MoveMuscle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def move_muscle_params
      params.require(:move_muscle).permit(:muscle_id, :move_id)
    end
end
