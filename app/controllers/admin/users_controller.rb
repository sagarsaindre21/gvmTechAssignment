class Admin::UsersController < AdminsController
	def index
		@users = User.all
	end

	def make_vendor
		user = User.where(id: params[:id])

		if user.update_all(role_id: Role.find_by(name: "vendor").id)
      flash[:success] = 'sucess' 
      redirect_to admin_users_path
    else
      redirect_to admin_users_path
    end
	end
end
