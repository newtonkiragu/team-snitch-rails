class Stream < ApplicationRecord
  has_many :students
  has_many :assignments

  private

  def name_with_state
    "#{level} #{stream}"
  end
end
