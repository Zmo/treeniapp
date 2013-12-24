class CreateWorkoutMoves < ActiveRecord::Migration
  def change
    create_table :workout_moves do |t|
      t.integer :workout_id
      t.integer :move_id
      t.integer :repetitions

      t.timestamps
    end
  end
end
