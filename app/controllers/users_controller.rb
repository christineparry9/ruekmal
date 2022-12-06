class UsersController < ApplicationController


  def show
    @user = current_user
    @program = @user.program
  end
end
