class Item < ActiveRecord::Base
  attr_accessible :category_id, :name, :price, :story, :image, :description


  belongs_to :category

  validates_presence_of :name, :price, :story
end
