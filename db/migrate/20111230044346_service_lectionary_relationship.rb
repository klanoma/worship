class ServiceLectionaryRelationship < ActiveRecord::Migration
  def up
    add_column :services, :lectionary_week_id, :integer
  end

  def down
    remove_column :services, :lectionary_week_id
  end
end
