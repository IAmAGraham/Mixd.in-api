class CreateSteps < ActiveRecord::Migration[5.1]
  def change
    create_table :steps do |t|
      t.string :name
      t.integer :length_of_time
      t.string :description

      t.timestamps
    end
  end
end
