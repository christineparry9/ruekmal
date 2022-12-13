class UsersController < ApplicationController

  def show
    @user = current_user
    @workplace = User.order('number_of_points DESC')
  end

  def update
    @user = current_user
    @user.update(user_params)
    respond_to do |format|
      format.html {redirect_to programs_path} # Follow regular flow of Rails
      format.text { render partial: "users/total_points", locals: { user: @user }, formats: [:html] }
    end
  end

  private

  def user_params
    puts params
    params.require(:user).permit(:number_of_points, :program_id)
  end

  # def update
  #   @user = current_user
  #   @user.update(user_params)
  #   respond_to do |format|
  #     format.html # Follow regular flow of Rails
  #     format.text { render "programs/index", locals: { user: @user }, formats: [:html] }
  #   end

  #   # redirect_to programs_path


  # end

  # private

  # def user_params
  #   params.require(:user).permit(:number_of_points, :standing_status, :program_id)
  # end

end
