class AddUserIdToJewelDatum < ActiveRecord::Migration[7.0]
  def change
    add_column :jewel_data, :user_id, :integer
  end
end
