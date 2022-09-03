class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :description
      t.string :price
      t.integer :stock
      t.uuid :uuid
      t.integer :created_by

      t.timestamps
    end
  end
end
