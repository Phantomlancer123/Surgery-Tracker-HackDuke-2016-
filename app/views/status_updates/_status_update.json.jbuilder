json.extract! status_update, :id, :progress, :message, :surgery_id, :created_at, :updated_at
json.url status_update_url(status_update, format: :json)