class CreateDrinkTags < ActiveRecord::Migration[5.1]
  def change
    create_table :drink_tags do |t|
      t.integer :drink_id
      t.integer :tag_id

      t.timestamps
    end
  end
end
