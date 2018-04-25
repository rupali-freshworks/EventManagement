class RemoveIndexFromSubscription < ActiveRecord::Migration
	def change
		remove_index :subscriptions, [:user_id, :event_id]
	end
	
  def up
  end

  def down
  end
end
