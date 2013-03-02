class Category < ActiveRecord::Base
  attr_accessible :apron, :bag, :pillow

  has_many :items

end
