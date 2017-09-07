json.partial! "teachers/teacher", teacher: @teacher
json.extract! @teacher, :name, :role, :picture, :created_at, :updated_at
