class AddDefaultsToInterestBooleans < ActiveRecord::Migration
  def change
    change_column :interests, :farming, :boolean, default: false
    change_column :interests, :fitness, :boolean, default: false
    change_column :interests, :family, :boolean, default: false
    change_column :interests, :civic, :boolean, default: false
    change_column :interests, :arts, :boolean, default: false
    change_column :interests, :tech, :boolean, default: false
    change_column :interests, :education, :boolean, default: false
  end
end
