class CreateSubgroups < ActiveRecord::Migration
  def change
    create_table :subgroups do |t|
      t.string :name

      t.timestamps
    end
  end
end
