class CreateIncidents < ActiveRecord::Migration[8.0]
  def change
    create_table :incidents do |t|
      t.string :description
      t.string :attack_vector


      t.timestamps
    end
  end
end
