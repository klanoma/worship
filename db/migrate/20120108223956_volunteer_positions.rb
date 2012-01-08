class VolunteerPositions < ActiveRecord::Migration
  def up
    remove_column :volunteer_positions, :volunteer_id
  end

  def down
    add_column :volunteer_positions, :volunteer_id, :integer
  end
end