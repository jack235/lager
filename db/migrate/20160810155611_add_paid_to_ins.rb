class AddPaidToIns < ActiveRecord::Migration
  def change
	add_column :ins, :paid, :boolean
  end
end
