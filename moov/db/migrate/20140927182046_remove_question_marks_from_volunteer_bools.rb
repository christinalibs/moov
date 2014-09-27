class RemoveQuestionMarksFromVolunteerBools < ActiveRecord::Migration
  def change
    rename_column :volunteers, :approved?, :approved
    rename_column :volunteers, :leader?, :leader
    rename_column :volunteers, :admin?, :admin
  end
end
