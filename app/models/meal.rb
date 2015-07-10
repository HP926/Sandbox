class Meal < ActiveRecord::Base

  has_many :ingredients

  validates :name, presence: true, uniqueness: true

end
