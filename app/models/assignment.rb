class Assignment < ApplicationRecord
  belongs_to :subject
  belongs_to :level
  def name_with_state
    "#{level}"
  end
end
