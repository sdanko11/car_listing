class ChangeNameOfMileComumn < ActiveRecord::Migration
  def up
    rename_column :cars, :miles, :mileage
  end
  def down
    rename_column :cars, :mileage, :miles
  end
end
