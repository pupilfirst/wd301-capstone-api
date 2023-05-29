class MatchesController < ApplicationController

  def index
    matches = Match.all
    render json: {matches: MatchesPresenter.new(matches).as_json}, status: :ok
  end

  def show
    render json: {msg: "showing match with id #{params[:id]}"}
  end

  def score
    render json: {msg: "showing score of match #{params[:id]}"}
  end
end
