class CreateLectionaryNotes < ActiveRecord::Migration
  def change
    create_table :lectionary_notes do |t|
      t.integer :lectionary_week_id
      t.integer :user_id
      t.text :notes
      t.text :bible_text
      t.timestamps
    end
    add_index :lectionary_notes, :user_id
    add_index :lectionary_notes, :lectionary_week_id
  end
end
