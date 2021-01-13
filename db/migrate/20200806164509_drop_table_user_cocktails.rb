class DropTableUserCocktails < ActiveRecord::Migration[4.2]
  def change
    drop_table :user_cocktails
  end
end
