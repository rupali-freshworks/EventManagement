class AddIndexToSubscription < ActiveRecord::Migration
  def change
  	add_index :subscriptions, [:user_id, :event_id]
  end
end