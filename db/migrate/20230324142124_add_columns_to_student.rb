class AddColumnsToStudent < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :adress, :string
  end
end
