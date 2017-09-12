class Stream < ApplicationRecord
  has_many :students

  private
  def name_with_state
  "#{level} #{stream}"
end
end
