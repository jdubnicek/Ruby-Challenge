require 'active_record'

class AttendedCampuses < ActiveRecord::Base
	belongs_to :attended_campuses, class_name: "Campus", foreign_key: "campus_id"
  belongs_to :student, class_name: "Student", foreign_key: "student_id"

  validates :student_id, :campus_id, :primary_campus, presence: true
end
