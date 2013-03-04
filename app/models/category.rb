class Category < ActiveRecord::Base
  attr_accessible :name, :image, :description

  has_many :items

  validates_presence_of :name

end
