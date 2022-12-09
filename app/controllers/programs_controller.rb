class ProgramsController < ApplicationController
  def index
    @user = current_user
    @programs = Program.all
  end
end
