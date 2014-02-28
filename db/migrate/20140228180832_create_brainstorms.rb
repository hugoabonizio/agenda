class CreateBrainstorms < ActiveRecord::Migration
  def change
    create_table :brainstorms do |t|
      t.string :idea
      t.text :annotations

      t.timestamps
    end
  end
end
