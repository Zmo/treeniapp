class UserWorkoutMovesController < ApplicationController
  before_action :set_user_workout_move, only: [:show, :edit, :update, :destroy]

  # GET /user_workout_moves
  # GET /user_workout_moves.json
  def index
    @user_workout_moves = UserWorkoutMove.all
  end

  # GET /user_workout_moves/1
  # GET /user_workout_moves/1.json
  def show
  end

  # GET /user_workout_moves/new
  def new
    @user_workout_move = UserWorkoutMove.new
  end

  # GET /user_workout_moves/1/edit
  def edit
  end

  # POST /user_workout_moves
  # POST /user_workout_moves.json
  def create
    @user_workout_move = UserWorkoutMove.new(user_workout_move_params)

    respond_to do |format|
      if @user_workout_move.save
        format.html { redirect_to @user_workout_move, notice: 'User workout move was successfully created.' }
        format.json { render action: 'show', status: :created, location: @user_workout_move }
      else
        format.html { render action: 'new' }
        format.json { render json: @user_workout_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_workout_moves/1
  # PATCH/PUT /user_workout_moves/1.json
  def update
    respond_to do |format|
      if @user_workout_move.update(user_workout_move_params)
        format.html { redirect_to @user_workout_move, notice: 'User workout move was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @user_workout_move.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_workout_moves/1
  # DELETE /user_workout_moves/1.json
  def destroy
    @user_workout_move.destroy
    respond_to do |format|
      format.html { redirect_to user_workout_moves_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_workout_move
      @user_workout_move = UserWorkoutMove.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_workout_move_params
      params.require(:user_workout_move).permit(:userworkout_id, :move_id, :repetitions)
    end
end
