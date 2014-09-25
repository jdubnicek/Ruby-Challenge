class CreateAttendedCampuses < ActiveRecord::Migration
  def change
    create_table :attended_campuses do |t|
      t.integer :student_id,  :null => false
      t.integer :campus_id, :null => false
      t.boolean :primary_campus, :null => false
      t.timestamps
    end

    add_index :attended_campuses, [:student_id, :campus_id], :unique => true
    add_index :attended_campuses, :campus_id
    add_index :attended_campuses, :primary_campus
  end
end