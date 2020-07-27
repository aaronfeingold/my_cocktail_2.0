class AddCocktailIdToCocktailTable < ActiveRecord::Migration
    def change
      add_column :cocktails, :cocktail_id, :integer
    end  
end
