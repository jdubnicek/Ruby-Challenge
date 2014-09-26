class Student < ActiveRecord::Base
  has_many :attended_campuses
  has_many :campuses, through: :attended_campuses

  validates :first_name, :last_name, presence: true
end