class CreateDateds < ActiveRecord::Migration[5.0]
  def change
    create_table :dateds do |t|
      t.text    :description
      t.string :machine_number,        null:false
      t.integer :total_production,      null:false
      t.integer :production_year,      null:false, default: "2020"
      t.integer :production_month,     null:false, default: "1"
      t.integer :production_day,       null:false, default: "1"
      t.integer :operating_time, null:false, default: "0"
      t.references :user,              index:true,foreign_key: {to_table: :users},null:false
      t.timestamps
    end
  end
end
