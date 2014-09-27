class CreateVolunteers < ActiveRecord::Migration
  def change
    create_table :volunteers do |t|
      t.string :name
      t.timestamp :bday
      t.boolean :approved?
      t.boolean :leader?
      t.boolean :admin?
      t.string :email

      t.timestamps
    end
  end
end
