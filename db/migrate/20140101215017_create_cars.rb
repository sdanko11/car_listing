class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.string :name, null:false
      t.string :color, null:false
      t.integer :year, null:false
      t.integer :miles, null:false
      t.string :description 
      t.timestamps
    end
  end
end