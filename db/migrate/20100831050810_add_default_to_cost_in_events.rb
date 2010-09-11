class AddDefaultToCostInEvents < ActiveRecord::Migration
  def self.up
    change_column :events, :cost, :integer, :default => 0
  end

  def self.down
    change_column :events, :cost, :integer, :default => nil
  end
end
