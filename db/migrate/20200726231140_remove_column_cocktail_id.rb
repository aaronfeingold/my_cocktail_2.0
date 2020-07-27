class RemoveColumnCocktailId < ActiveRecord::Migration
  def change
    remove_column :cocktails, :cocktail_id
  end
end
