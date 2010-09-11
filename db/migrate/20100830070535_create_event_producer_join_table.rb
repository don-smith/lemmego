class CreateEventProducerJoinTable < ActiveRecord::Migration
  def self.up
    create_table :event_producers, :id => false do |t|
      t.integer :event_id
      t.integer :producer_id
    end
  end

  def self.down
    drop_table :event_producers
  end
end
