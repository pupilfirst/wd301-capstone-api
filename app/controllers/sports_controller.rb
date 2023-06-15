class SportsController < ApplicationController
  def index
    sports = Sport.all
    render json: { sports: sports.as_json(only: %i[id name]) }, status: :ok
  end

  def show
    sport = Sport.find_by(id: params[:id])
    if sport
      render json: { sport: sport.as_json(only: %i[id name]) }, status: :ok
    else
      render json: {
               error: "No sport present with id as #{params[:id]}"
             },
             status: :not_found
    end
  end
end
