class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :muscles
      t.integer :person_id

      t.timestamps
    end
  end
end
