json.partial! "students/student", student: @student

json.extract! @student, :name, :level, :stream, :fee, :dormitory, :clubs, :picture, :created_at, :updated_at
