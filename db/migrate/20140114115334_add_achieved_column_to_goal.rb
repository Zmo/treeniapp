class AddAchievedColumnToGoal < ActiveRecord::Migration
  def change
    add_column :goals, :achieved, :boolean
  end
end
