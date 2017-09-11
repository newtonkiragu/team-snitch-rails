json.partial! "students/student", student: @student

json.extract! @student, :name, :stream, :fee, :dormitory, :clubs, :picture, :created_at, :updated_at
