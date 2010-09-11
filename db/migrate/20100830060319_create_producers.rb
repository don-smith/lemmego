class CreateProducers < ActiveRecord::Migration
  def self.up
    create_table :producers do |t|
      t.integer :user_id
      t.boolean :is_owner
      t.timestamps
    end
  end

  def self.down
    drop_table :producers
  end
end
