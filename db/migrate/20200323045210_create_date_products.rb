class CreateDateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :date_products do |t|
      t.references :dated, foreign_key: true
      t.string :product_no
      t.string :producer
      t.string :producer02
      t.integer :number_of_production
      t.integer :defective
      t.integer :waste
      t.timestamps
    end
  end
end
