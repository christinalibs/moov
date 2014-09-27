class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name
      t.string :location
      t.datetime :date
      t.integer :num_volunteers_needed

      t.timestamps
    end
  end
end
