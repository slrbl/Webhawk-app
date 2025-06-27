class AddLogLineContentToIncidents < ActiveRecord::Migration[8.0]
  def change
    add_column :incidents, :log_line_content, :text
  end
end
