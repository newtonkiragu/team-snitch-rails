json.extract! student, :id, :name, :level, :stream, :fee, :dormitory, :clubs, :created_at, :updated_at
json.url student_url(student, format: :json)
