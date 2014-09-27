class ChangeBdayDataType < ActiveRecord::Migration
  def up
    change_column :volunteers, :bday, :date
  end

  def down
    change_column :volunteers, :bday, :timestamp
  end
end
