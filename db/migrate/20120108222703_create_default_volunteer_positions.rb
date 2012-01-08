class CreateDefaultVolunteerPositions < ActiveRecord::Migration
  def change
    create_table :default_volunteer_positions do |t|
      t.string :name
      t.integer :sort

      t.timestamps
    end
  end
end
