json.extract! teacher_attachment, :id, :teacher_id, :avatar, :created_at, :updated_at
json.url teacher_attachment_url(teacher_attachment, format: :json)
