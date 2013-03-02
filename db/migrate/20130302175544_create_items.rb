class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :story
      t.integer :user_id
      t.string :name
      t.integer :price
      t.integer :category_id

      t.timestamps
    end
  end
end
