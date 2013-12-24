class CreateUserWorkoutMoves < ActiveRecord::Migration
  def change
    create_table :user_workout_moves do |t|
      t.integer :userworkout_id
      t.integer :move_id
      t.integer :repetitions

      t.timestamps
    end
  end
end
