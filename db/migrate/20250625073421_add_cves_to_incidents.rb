class AddCvesToIncidents < ActiveRecord::Migration[8.0]
  def change
    add_column :incidents, :cves, :string
  end
end
