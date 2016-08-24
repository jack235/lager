class FixColumnName < ActiveRecord::Migration
  def change
	add_column :ins, :to, :string
  end
end
