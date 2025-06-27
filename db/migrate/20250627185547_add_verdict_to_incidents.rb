class AddVerdictToIncidents < ActiveRecord::Migration[8.0]
  def change
    add_column :incidents, :verdict, :string
  end
end
