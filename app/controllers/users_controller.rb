class UsersController < ApplicationController

  def show
    @user = current_user
  end

  def update
    @user = current_user
    @user.update(user_params)
    respond_to do |format|
      format.html # Follow regular flow of Rails
      format.text { render "programs/index", locals: { user: @user }, formats: [:html] }
    end

    # redirect_to programs_path


  end

  private

  def user_params
    params.require(:user).permit(:number_of_points, :standing_status, :program_id)
  end

end
