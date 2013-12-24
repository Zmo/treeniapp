class RemoveMusclesAndPersonIdFromWorkout < ActiveRecord::Migration
  def change
    remove_column :workouts, :muscles
    remove_column :workouts, :person_id
    add_column :workouts, :type, :string
  end
end
