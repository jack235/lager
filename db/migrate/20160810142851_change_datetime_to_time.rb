class ChangeDatetimeToTime < ActiveRecord::Migration
  def change
	change_column :outs, :date, :date
  end
end
