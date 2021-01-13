class AddUserIdToCocktails < ActiveRecord::Migration[4.2]
  def change
    add_column :cocktails, :user_id, :integer
  end
end
