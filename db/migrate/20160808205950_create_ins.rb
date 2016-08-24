class CreateIns < ActiveRecord::Migration
  def change
    create_table :ins do |t|
      t.float :amount
      t.float :price
      t.references :item, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
