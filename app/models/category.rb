class Category < ActiveRecord::Base
  attr_accessible :name

  has_many :items

  validates_presence_of :name

end
