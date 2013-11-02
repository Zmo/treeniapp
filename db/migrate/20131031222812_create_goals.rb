class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :name
      t.integer :value
      t.string :unit
      t.integer :person_id

      t.timestamps
    end
  end
end
