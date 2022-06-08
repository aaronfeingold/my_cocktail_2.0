class AddColumnIngredientsToCocktailsTable < ActiveRecord::Migration[4.2]
  def change
      add_column :cocktails, :ingredients, :string
  end
end
