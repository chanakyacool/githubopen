class Portfolio < ActiveRecord::Base
  attr_accessible :description, :project_name, :project_website
end
