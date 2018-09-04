class AddCraftIdToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :craft_id, :integer
  end
end
