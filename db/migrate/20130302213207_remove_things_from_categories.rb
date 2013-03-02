class RemoveThingsFromCategories < ActiveRecord::Migration
 def change
   remove_column :categories, :pillow
   remove_column :categories, :bag
   remove_column :categories, :apron
   add_column :categories, :name, :string
  end
end
