class Client < ActiveRecord::Base
  attr_accessible :address1, :address2, :city, :client_project, :country, :email, :name, :project_description, :project_dude_date, :project_start_date, :state, :zip
end
