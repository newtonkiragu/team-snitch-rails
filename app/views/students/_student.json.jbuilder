json.extract! student, :id, :name, :stream_id, :fee, :dormitory, :clubs, :created_at, :updated_at
json.url student_url(student, format: :json)
