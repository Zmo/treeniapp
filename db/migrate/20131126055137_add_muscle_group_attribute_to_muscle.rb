class AddMuscleGroupAttributeToMuscle < ActiveRecord::Migration
  def change
    add_column :muscles, :musclegroup, :string
  end
end
