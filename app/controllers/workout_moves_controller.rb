class WorkoutMovesController < ApplicationController
  before_action :set_workout_move, only: [:show, :edit, :update, :destroy]

  # GET /workout_moves
  # GET /workout_moves.json
  def index
    @workout_moves = WorkoutMove.all
  end

  # GET /workout_moves/1
  # GET /workout_moves/1.json
  def show
  end

  # GET /workout_moves/new
  def new
    @workout_move = WorkoutMove.new
  end

  # GET /workout_moves/1/edit
  def edit
  end

  # POST /workout_moves
  # POST /workout_moves.json
  def create
    @workout_move = WorkoutMove.new(workout_move_params)

    respond_to do |format|
      if @workout_move.save
        format.html { redirect_to @workout_move, notice: 'Workout move was successfully created.' }
        format.json { render action: 'show', status: :created, location: @workout_move }
      else
        format.html { render action: 'new' }
        format.json { render json: @workout_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /workout_moves/1
  # PATCH/PUT /workout_moves/1.json
  def update
    respond_to do |format|
      if @workout_move.update(workout_move_params)
        format.html { redirect_to @workout_move, notice: 'Workout move was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @workout_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /workout_moves/1
  # DELETE /workout_moves/1.json
  def destroy
    @workout_move.destroy
    respond_to do |format|
      format.html { redirect_to workout_moves_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_workout_move
      @workout_move = WorkoutMove.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def workout_move_params
      params.require(:workout_move).permit(:workout_id, :move_id, :repetitions)
    end
end
