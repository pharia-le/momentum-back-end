class Api::V1::HabitsController < ApplicationController
  before_action :set_habit, only: [:show, :update, :destroy]

  def index
    if logged_in?
      @habits = current_user.habits
      render json: HabitSerializer.new(@habits)
    else
      render json: {
        error: "You must me logged in to see habits"
      }
    end
  end

  def create
    if logged_in?
      @habit = current_user.habits.build(habit_params)
      if @habit.save
        render json: HabitSerializer.new(@habit)
      else
        render json: {
          error: @habit.errors.full_messages.to_sentence
        }
      end
    end
  end

  def update
    if logged_in? && current_user === @habit.user
      if @habit.update(habit_params)
        render json: HabitSerializer.new(@habit), status: :ok
      else
        render json: {
          error: @habit.errors.full_messages.to_sentence
        }
      end
    end
  end

  def destroy
    if @habit.destroy
      render json:  { data: "Habit successfully destroyed" }, status: :ok
    else
      error_resp = {
        error: "Habit not found and not destroyed"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
    def set_habit
      @habit = Habit.find(params[:id])
    end

    def habit_params
      params.require(:habit).permit(:name, :user_id)
    end
end
