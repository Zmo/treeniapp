class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.integer :workout_id
      t.integer :move_id
      t.integer :user_id
      t.integer :amount
      t.string :unit

      t.timestamps
    end
  end
end
