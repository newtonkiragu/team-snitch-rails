class SchoolAttachment < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
   belongs_to :school
end
