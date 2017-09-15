class Stream < ApplicationRecord
  belongs_to :level
  has_many :students
  has_many :assignments

  private

  def name_with_state
  "#{level.level} #{stream}"
  end
end
