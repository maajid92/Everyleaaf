class AddChangeColumnNullTasks < ActiveRecord::Migration[6.0]
  def change
    change_column :tasks, :name, :string, null: false
    change_column :tasks, :Details, :string, null: false
  end
end
