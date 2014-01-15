class ChangeResultColumnNames < ActiveRecord::Migration
  def change
    rename_column :results, :amount, :repetitions
    remove_column :results, :unit
    add_column :results, :weight, :integer
  end
end
