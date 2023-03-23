class PowersController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_error

  def index
    render json: Power.all
  end
  def show
    power= find_power
    render json: power
  end
  def update
    power= find_power
    power.update!(params.permit(:name, :description))
    render json: power
  end

  private
  def find_power
    Power.find(params[:id])
  end

  def record_not_found
    render json: {error:"Power was not found"}, status: :not_found
  end
  def render_unprocessable_error(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity
  end
end
