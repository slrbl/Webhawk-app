class AddHostToIncidents < ActiveRecord::Migration[8.0]
  def change
    add_column :incidents, :host, :string
  end
end
