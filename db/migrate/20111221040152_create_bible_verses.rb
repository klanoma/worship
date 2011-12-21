class CreateBibleVerses < ActiveRecord::Migration
  def change
    create_table :bible_verses do |t|
      t.integer :bible_translation_id
      t.integer :bible_book_id
      t.integer :chapter
      t.integer :verse
      t.text :text
      t.timestamps
    end

    add_index :bible_verses, :bible_translation_id
    add_index :bible_verses, :bible_book_id
    add_index :bible_verses, :chapter
    add_index :bible_verses, :verse
  end
end
