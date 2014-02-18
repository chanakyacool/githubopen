class DevelopersController < ApplicationController

	def index
		@developers = Developer.all
		
	end

	def create

		dev =  request.env['omniauth.auth']
		Developer.find_or_create_by_provider_and_uid_and_photo_and_nickname(dev['provider'], dev['uid'], dev['info']['image'], dev['info']['nickname'])
		flash[:notice] = "Developer Successfully logged in"
				
		session[:developer_id] = Developer.find_by_uid(dev['uid'])
		redirect_to developers_url
	end

	def destroy
		@developer = Developer.find(params[:id])
		@developer.destroy
		flash[:notice] = "Successfully deleted developer"
		redirect_to developers_url	
		
	end

	def signout
		session[:developer_id] = nil
		redirect_to developers_url , :notice => "Logged  out Successfully"
		
	end
 
end
