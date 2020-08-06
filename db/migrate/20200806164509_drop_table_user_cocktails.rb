class DropTableUserCocktails < ActiveRecord::Migration
  def change
    drop_table :user_cocktails
  end
end
