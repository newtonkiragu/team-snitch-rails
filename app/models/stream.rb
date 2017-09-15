class Stream < ApplicationRecord
  belongs_to :level
  has_many :students
  has_many :assignments

  private

  def name_with_state
<<<<<<< HEAD
  "#{level.level} #{stream}"
end
=======
    "#{level} #{stream}"
  end
>>>>>>> bf2a2dc8908e27393c88a9480158e8aeef369c59
end
