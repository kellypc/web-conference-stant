json.extract! lecture, :id, :title, :duration, :meeting_id, :created_at, :updated_at
json.url lecture_url(lecture, format: :json)
