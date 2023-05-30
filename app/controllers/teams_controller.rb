class TeamsController < ApplicationController
  def index
    teams = Team.all
    render json: Teams::TeamsPresenter.new(teams).as_json, status: :ok
  end

  def show
    team = Team.find_by_id(params[:id])
    if team
      render json: Teams::TeamPresenter.new(team).as_json, status: :ok
    else
      render json: {error: "No team present with id as #{params[:id]}"}, status: :not_found
    end
  end
end
