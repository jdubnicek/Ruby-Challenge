class Student < ActiveRecord::Base
  has_many :attended_campuses
  has_many :campuses, through: :attended_campuses
end