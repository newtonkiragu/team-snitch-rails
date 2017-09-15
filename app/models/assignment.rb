class Assignment < ApplicationRecord
  belongs_to :level
  belongs_to :subject
  belongs_to :stream
  def name_with_state
    "#{level}"
  end
end
