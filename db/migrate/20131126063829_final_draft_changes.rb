class FinalDraftChanges < ActiveRecord::Migration
  def change
    drop_table :workout_muscles
    add_column :users, :height, :integer
  end
end
