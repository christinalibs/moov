class AddNonprofitIdToEvents < ActiveRecord::Migration
  def change
    add_column :events, :nonprofit_id, :integer
  end
end
