class CreateDrinkSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :drink_steps do |t|
      t.integer :drink_id
      t.integer :step_id

      t.timestamps
    end
  end
end
