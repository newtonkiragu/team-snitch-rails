json.partial! "schools/school", school: @school

json.extract! @school, :id, :name, :picture, :created_at, :updated_at
