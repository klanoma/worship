class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :address
      t.string :city
      t.integer :state_id
      t.string :zip_code
      t.text :notes

      t.timestamps
    end
  end
end
