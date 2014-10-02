class CreateCampus < ActiveRecord::Migration
  def change
    create_table :campus do |t|
    	t.string :city, :null => false
      t.string :state, :null => false
      t.string :name, :null => false
      t.timestamps
    end

  end
end
