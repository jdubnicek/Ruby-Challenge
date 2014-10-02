require 'active_record'

class Campus < ActiveRecord::Base
	has_many :attended_campuses
  has_many :students, through: :attended_campuses

  validates :city, :state, :name, presence: true
end
	