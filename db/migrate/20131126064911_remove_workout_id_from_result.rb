class RemoveWorkoutIdFromResult < ActiveRecord::Migration
  def change
    remove_column :results, :workout_id
  end
end
