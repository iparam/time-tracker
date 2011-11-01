class UsersController < ApplicationController
	skip_before_filter :require_login ,:only=>[:new,:create]
	def new
		unless current_user
			@user = User.new
		else
			redirect_to root_path,:notice=>"You can' access page'"
		end
	end

	def create
		unless current_user
		@user = User.new(params[:user])
		if @user.save
			redirect_to root_url, :notice => "Signed up!"
		else
			render :new
		end
		else
			redirect_to root_path,:notice=>"You can' access page'"
		end
	end

end
