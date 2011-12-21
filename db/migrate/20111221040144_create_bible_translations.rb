class CreateBibleTranslations < ActiveRecord::Migration
  def change
    create_table :bible_translations do |t|
      t.string :title
      t.string :abbreviation
      t.string :slug
      t.timestamps
    end
  end
end
