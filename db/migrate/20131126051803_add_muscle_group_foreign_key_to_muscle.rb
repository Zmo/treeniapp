class AddMuscleGroupForeignKeyToMuscle < ActiveRecord::Migration
  def change
    add_column :muscles, :musclegroup_id, :integer
  end
end
