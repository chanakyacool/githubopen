class Team < ActiveRecord::Base
  attr_accessible :description, :desgination, :email, :facebook_url, :github_id, :name, :personal_website
end
