class CreateWorkoutMuscles < ActiveRecord::Migration
  def change
    create_table :workout_muscles do |t|
      t.integer :muscle_id
      t.integer :workout_id

      t.timestamps
    end
  end
end
