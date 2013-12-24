class DropMuscleGroup < ActiveRecord::Migration
  def change
    drop_table :muscle_groups
  end
end
