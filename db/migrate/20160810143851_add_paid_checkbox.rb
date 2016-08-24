class AddPaidCheckbox < ActiveRecord::Migration
  def change
    add_column :outs, :paid, :boolean, :default => 0
  end
end
