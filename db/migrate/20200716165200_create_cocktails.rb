class CreateCocktails < ActiveRecord::Migration[4.2]
  def change
    create_table :cocktails do |t|
      t.string :name
      
      t.timestamps null: false
    end
  end
end
