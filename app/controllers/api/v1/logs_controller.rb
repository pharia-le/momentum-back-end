class Api::V1::LogsController < ApplicationController
  before_action :set_log, only: [:show, :update, :destroy]

  def create
    @log = Log.new(log_params)
    if @log.save
      render json: @log
    else
      render json: {
        error: @log.errors.full_messages.to_sentence
      }
    end
  end

  def destroy
    if @log.destroy
      render json:  { data: "Log successfully destroyed" }, status: :ok
    else
      error_resp = {
        error: "Log not found and not destroyed"
      }
      render json: error_resp, status: :unprocessable_entity
    end
  end

  private
    def set_log
      @log = Log.find(params[:id])
    end

    def log_params
      params.require(:log).permit(:done, :date, :habit_id)
    end
end
