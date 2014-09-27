class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.boolean :farming
      t.boolean :fitness
      t.boolean :family
      t.boolean :civic
      t.boolean :arts
      t.boolean :tech
      t.boolean :education
      t.integer :interested_id
      t.string :interested_type

      t.timestamps
    end
  end
end
