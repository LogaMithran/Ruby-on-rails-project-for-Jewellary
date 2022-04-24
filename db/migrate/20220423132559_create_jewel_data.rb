class CreateJewelData < ActiveRecord::Migration[7.0]
  def change
    create_table :jewel_data do |t|
      t.integer :jewelId
      t.string :jewelName
      t.integer :jewelPrice
      t.date :dateofpurchase

      t.timestamps
    end
  end
end
