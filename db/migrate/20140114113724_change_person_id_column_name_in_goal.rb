class ChangePersonIdColumnNameInGoal < ActiveRecord::Migration
  def change
    rename_column :goals, :person_id,  :user_id
  end
end
