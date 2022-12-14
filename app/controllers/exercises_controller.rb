class ExercisesController < ApplicationController

  def index
    @user = current_user
    @exercises = Exercise.all
    @lower = Exercise.where(category: 'lower')
    @neck = Exercise.where(category: 'neck')
    @upper = Exercise.where(category: 'upper')
    @foryou = @user.program.exercises.all
  end
end
