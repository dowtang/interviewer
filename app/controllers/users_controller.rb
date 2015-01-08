class UsersController < ApplicationController
  def edit
    @user = current_user
  end

  def show
    @user = User.find(params[:id])
    # binding.pry
  end

  def update
    if current_user.update_attributes(params[:user].permit(:first_name, :last_name, :education, :desired_industry, :desired_company, :previous_work_experiences, :user_type, :specialty))
      redirect_to current_user
    end
  end

  def avatar
    if current_user.update(user_params)
      redirect_to edit_user_path(current_user)
    else
      redirect_to edit_user_path(current_user)
    end
  end

  private
  def user_params
    params.require(:user).permit(:avatar)
  end
end
