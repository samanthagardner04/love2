class Item < ActiveRecord::Base
  attr_accessible :category_id, :name, :price, :story, :user_id

  belongs_to :user

  belongs_to :category

  validates_presence_of :name, :price, :story
end
