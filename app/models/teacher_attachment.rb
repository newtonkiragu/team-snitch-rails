class TeacherAttachment < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  belongs_to :teacher
end
