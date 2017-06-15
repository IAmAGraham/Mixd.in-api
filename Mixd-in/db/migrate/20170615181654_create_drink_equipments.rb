class CreateDrinkEquipments < ActiveRecord::Migration[5.1]
  def change
    create_table :drink_equipments do |t|
      t.integer :drink_id
      t.integer :equipment_id

      t.timestamps
    end
  end
end
