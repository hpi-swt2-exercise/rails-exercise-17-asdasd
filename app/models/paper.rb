class Paper < ActiveRecord::Base

  validates :title, presence: true
  validates :venue, presence: true
  validates :year, numericality: { only_integer: true }

end
