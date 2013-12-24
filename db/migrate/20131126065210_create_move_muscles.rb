class CreateMoveMuscles < ActiveRecord::Migration
  def change
    create_table :move_muscles do |t|
      t.integer :muscle_id
      t.integer :move_id

      t.timestamps
    end
  end
end
