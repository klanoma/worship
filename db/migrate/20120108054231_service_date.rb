class ServiceDate < ActiveRecord::Migration
  def up
    remove_column :services, :started_at
    add_column :services, :date, :date
  end

  def down
    add_column :services, :started_at, :datetime
    remove_column :date
  end
end
