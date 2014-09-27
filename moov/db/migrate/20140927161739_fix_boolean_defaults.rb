class FixBooleanDefaults < ActiveRecord::Migration
  def change
    change_column_default(:volunteers, :admin?, false)
    change_column_default(:volunteers, :approved?, false)
    change_column_default(:volunteers, :leader?, false)
  end
end
