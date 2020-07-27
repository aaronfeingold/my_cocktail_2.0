class AddLiquorColumnToCocktail < ActiveRecord::Migration
  def change
    add_column :cocktails, :base_liquor, :string
  end
end
