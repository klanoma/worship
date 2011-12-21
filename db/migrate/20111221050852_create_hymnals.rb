class CreateHymnals < ActiveRecord::Migration
  def change
    create_table :hymnals do |t|
      t.string :name
      t.string :editor
      t.integer :year
      t.timestamps
    end
  end
end
