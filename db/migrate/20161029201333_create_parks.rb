class CreateParks < ActiveRecord::Migration[5.0]
  def change
    create_table :parks do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.references :creator
      t.references :city

      t.timestamps
    end
  end
end
