class CreateUserWorkouts < ActiveRecord::Migration
  def change
    create_table :user_workouts do |t|
      t.string :title
      t.string :type
      t.integer :user_id

      t.timestamps
    end
  end
end
