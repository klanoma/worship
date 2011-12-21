class CreateBibleBooks < ActiveRecord::Migration
  def change
    create_table :bible_books do |t|
      t.string :title
      t.string :abbreviation
      t.string :slug
      t.timestamps
    end
  end
end
