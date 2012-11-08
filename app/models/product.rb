class Product < ActiveRecord::Base
  attr_accessible :description, :image_url, :price, :title
  
  #Orders the product list alphabetically by their title
  default_scope :order => 'title'
  
  #Validation
  validates :title, :description, :image_url, :presence =>true
  validates :title, :uniqueness => true
  validates :title, :length => {:minimum => 10}
  validates :price, :numericality => {:greater_than_or_equal_to => 0.01}
  validates :image_url, :format => {:with => %r{\.(gif|jpg|png)$}i,
    :message => 'Must be a URL for a GIF, JPG or PNG image'}
end