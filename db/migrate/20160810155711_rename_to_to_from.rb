class RenameToToFrom < ActiveRecord::Migration
  def change
	rename_column :ins, :to, :from
  end
end
