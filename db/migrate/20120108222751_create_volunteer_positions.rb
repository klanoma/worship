class CreateVolunteerPositions < ActiveRecord::Migration
  def change
    create_table :volunteer_positions do |t|
      t.integer :user_id
      t.integer :volunteer_id
      t.string :name
      t.integer :sort

      t.timestamps
    end
  end
end
