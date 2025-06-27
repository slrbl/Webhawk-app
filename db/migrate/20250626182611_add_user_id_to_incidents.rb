class AddUserIdToIncidents < ActiveRecord::Migration[8.0]
  def change
    add_column :incidents, :user_id, :integer
  end
end
