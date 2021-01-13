class AddLiquorColumnToCocktail < ActiveRecord::Migration[4.2]
  def change
    add_column :cocktails, :base_liquor, :string
  end
end
