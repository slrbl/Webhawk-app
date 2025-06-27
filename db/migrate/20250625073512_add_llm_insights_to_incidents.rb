class AddLlmInsightsToIncidents < ActiveRecord::Migration[8.0]
  def change
    add_column :incidents, :llm_insights, :string
  end
end
