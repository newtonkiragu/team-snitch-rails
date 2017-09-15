class Stream < ApplicationRecord
  belongs_to :level
  has_many :students

  private
  def name_with_state
  "#{level.level} #{stream}"
end
end
