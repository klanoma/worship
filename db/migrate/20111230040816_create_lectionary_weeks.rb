class CreateLectionaryWeeks < ActiveRecord::Migration
  def change
    create_table :lectionary_weeks do |t|
      t.integer :lectionary_order_id
      t.string :year
      t.integer :week
      t.string :scripture
      t.timestamps
    end
    add_index :lectionary_weeks, :year
    add_index :lectionary_weeks, :week
  end
end
