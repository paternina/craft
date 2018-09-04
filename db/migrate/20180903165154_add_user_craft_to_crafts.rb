class AddUserCraftToCrafts < ActiveRecord::Migration[5.2]
  def change
    add_column :crafts, :user_craft, :string
  end
end
