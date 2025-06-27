json.extract! incident, :id, :description, :attack_vector, :created_at, :updated_at
json.url incident_url(incident, format: :json)
