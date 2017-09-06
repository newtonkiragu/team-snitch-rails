json.extract! student_parent, :id, :name, :mobile, :email, :created_at, :updated_at
json.url student_parent_url(student_parent, format: :json)
