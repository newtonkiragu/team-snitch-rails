class Document < ApplicationRecord
  belongs_to :school
  mount_uploader :document, DocumentUploader
end
