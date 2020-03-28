class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string  :product_no
      t.index :product_no, unique: true
      t.timestamps
    end
  end
end
