class RemoveColumnCocktailId < ActiveRecord::Migration[4.2]
  def change
    remove_column :cocktails, :cocktail_id
  end
end
