class DropTableBartenders < ActiveRecord::Migration
  def change
    drop_table :bartenders
  end
end
