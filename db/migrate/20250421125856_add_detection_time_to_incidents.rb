class AddDetectionTimeToIncidents < ActiveRecord::Migration[8.0]
  def change
    add_column :incidents, :detected_at, :time
  end
end
