class Author < ActiveRecord::Base

  has_many :authorships
  has_many :papers, through: :authorships

  validates :last_name, presence: true

  def name
    first_name + " " + last_name
  end

end
