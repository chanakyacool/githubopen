class Product < ActiveRecord::Base
  attr_accessible :description, :domain, :features, :name
end
