class ExercisesController < ApplicationController

  def index
    @exercises = Exercise.all
    @lower = Exercise.where(category: 'lower')
    @neck = Exercise.where(category: 'neck')
    @upper = Exercise.where(category: 'upper')
  end
end
