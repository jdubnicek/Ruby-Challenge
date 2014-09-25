class CreateCampuses < ActiveRecord::Migration
  def change
    create_table :campuses do |t|
      t.string :city, :null => false
      t.string :state :null => false
      t.string :name, :null => false
      t.timestamps
    end

    add_index :campus_id
  end
end