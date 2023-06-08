class TeamsController < ApplicationController
  def index
    teams = Team.all
    render json: TeamsPresenter.index(teams), status: :ok
  end

  def show
    team = Team.find_by(id: params[:id])
    if team
      render json: TeamsPresenter.show(team), status: :ok
    else
      render json: {error: "No team present with id as #{params[:id]}"}, status: :not_found
    end
  end
end
