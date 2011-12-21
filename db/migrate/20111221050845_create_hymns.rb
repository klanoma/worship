class CreateHymns < ActiveRecord::Migration
  def change
    create_table :hymns do |t|
      t.integer :number
      t.string :name
      t.string :tune
      t.string :composer
      t.string :copyright
      t.integer :year
      t.integer :hymnal_id
      t.timestamps
    end
    add_index :hymns, :hymnal_id
  end
end
