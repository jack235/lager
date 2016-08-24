class AddDateToIn < ActiveRecord::Migration
  def change
	add_column :ins, :date, :date

  end
end
