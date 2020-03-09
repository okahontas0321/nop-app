class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :producer,              null:false
      t.string :producer02,            null:false
      t.string :machine_number,        null:false
      t.string  :product_no,           null:false
      t.string :number_of_production,  null:false
      t.string :defective,             null:false
      t.string :waste,                 null:false
      t.string :total_production,      null:false
      t.text    :description,          null:false
      t.integer :production_year,      null:false
      t.integer :production_month,     null:false
      t.integer :production_day,       null:false
      t.integer :operating_time, null:false, default: "0"
      t.references :user,              index:true,foreign_key: {to_table: :users},null:false
      t.timestamps
    end
  end
end
