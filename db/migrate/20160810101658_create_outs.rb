class CreateOuts < ActiveRecord::Migration
  def change
    create_table :outs do |t|
      t.datetime :date
      t.references :item, index: true, foreign_key: true
      t.float :amount
      t.float :price
      t.string :to

      t.timestamps null: false
    end
  end
end
