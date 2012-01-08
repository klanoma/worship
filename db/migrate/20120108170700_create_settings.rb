class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.integer, :user_id
      t.integer, :lectionary_order_id
      t.integer, :hymn_count
      t.integer, :hymnal_id
      t.integer :bible_translation_id

      t.timestamps
    end
  end
end
