class AddDefaultNumVolunteersNeededToEvents < ActiveRecord::Migration
  def change
    change_column :events, :num_volunteers_needed, :integer, default: 0
  end
end
