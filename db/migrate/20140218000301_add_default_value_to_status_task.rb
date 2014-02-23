class AddDefaultValueToStatusTask < ActiveRecord::Migration
  def change
    change_column :tasks, :status, :string, default: 'undone'
  end
end
