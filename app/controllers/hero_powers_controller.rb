class HeroPowersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_error

  def create
    
    h_power= HeroPower.create!(params.permit(:strength, :hero_id, :power_id))
    hero= h_power.hero
    render json: hero, serializer:HeroWithPowersSerializer
  end

  private
  
  def render_unprocessable_error(invalid)
    render json: {errors:invalid.record.errors.full_messages}, status: :unprocessable_entity
  end
end
