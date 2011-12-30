class CreateLectionaryOrders < ActiveRecord::Migration
  def change
    create_table :lectionary_orders do |t|
      t.string :order
      t.string :name
      t.text :description
      t.timestamps
    end
    add_index :lectionary_orders, :order
  end
end
