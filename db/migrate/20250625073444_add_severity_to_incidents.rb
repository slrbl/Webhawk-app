class AddSeverityToIncidents < ActiveRecord::Migration[8.0]
  def change
    add_column :incidents, :severity, :string
  end
end
