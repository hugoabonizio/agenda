class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.string :status
      t.string :context

      t.timestamps
    end
  end
end
