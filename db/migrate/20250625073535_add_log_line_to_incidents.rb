class AddLogLineToIncidents < ActiveRecord::Migration[8.0]
  def change
    add_column :incidents, :log_line, :integer
  end
end
