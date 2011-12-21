class CreateBibleVerses < ActiveRecord::Migration
  def change
    create_table :bible_verses do |t|
      t.string :title
      t.string :abbreviation
      t.string :slug
      t.timestamps
    end
  end
end
