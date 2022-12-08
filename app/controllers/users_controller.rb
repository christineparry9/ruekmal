class UsersController < ApplicationController

  def show
    @user = current_user
    @workplace_users = current_user.workplace.users.all.order('user.number_of_points DESC').all
  end

  def update
    @user = current_user
    @user.update(user_params)
    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render partial: "users/total_points", locals: { user: @user }, formats: [:html] }
    end
  end

private

  def user_params
    params.require(:user).permit(:number_of_points)
  end
end
