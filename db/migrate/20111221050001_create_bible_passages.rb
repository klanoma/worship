class CreateBiblePassages < ActiveRecord::Migration
  def change
    create_table :bible_passages do |t|
      t.integer :bible_verse_id
      t.integer :verse_count
      t.integer :sort
      t.timestamps
    end
    add_index :bible_passages, :bible_verse_id
  end
end
