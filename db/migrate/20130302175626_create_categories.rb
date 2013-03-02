class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :pillow
      t.string :bag
      t.string :apron

      t.timestamps
    end
  end
end
