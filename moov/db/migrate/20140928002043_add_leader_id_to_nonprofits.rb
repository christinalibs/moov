class AddLeaderIdToNonprofits < ActiveRecord::Migration
  def change
    add_column :nonprofits, :leader_id, :integer
  end
end
