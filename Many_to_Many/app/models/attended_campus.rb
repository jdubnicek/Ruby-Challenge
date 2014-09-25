class AttendedCampus < ActiveRecord::Base
  belongs_to :attended_campuses, class_name: "Campus", foreign_key: "campus_id"
  belongs_to :student, class_name: "Student", foreign_key: "student_id"
end