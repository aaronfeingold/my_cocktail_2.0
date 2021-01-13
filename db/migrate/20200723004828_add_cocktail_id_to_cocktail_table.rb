class AddCocktailIdToCocktailTable < ActiveRecord::Migration[4.2]
    def change
      add_column :cocktails, :cocktail_id, :integer
    end  
end
