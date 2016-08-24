class AddAmountToItems < ActiveRecord::Migration
  def change
    add_column :items, :scientific_name, :string
    rename_column :items, :quantity, :amount

  end
end
