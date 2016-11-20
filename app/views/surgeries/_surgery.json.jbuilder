json.extract! surgery, :id, :scheduled_time, :patient, :tracking_id, :description, :est_length, :created_at, :updated_at
json.url surgery_url(surgery, format: :json)