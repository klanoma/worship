class CreateServices < ActiveRecord::Migration
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.integer :user_id
      t.integer :sort
      t.datetime :started_at
      t.timestamps
    end
  end
end
