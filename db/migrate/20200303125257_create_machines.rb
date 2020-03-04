class CreateMachines < ActiveRecord::Migration[5.0]
  def change
    create_table :machines do |t|
      t.string :name, null: false
      t.index :name, unique: true
      t.integer :operating_time, null:false, default: "0"
      t.timestamps
    end
  end
end
