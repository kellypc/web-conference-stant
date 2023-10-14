json.extract! meeting, :id, :period, :conference_id, :created_at, :updated_at
json.url meeting_url(meeting, format: :json)
