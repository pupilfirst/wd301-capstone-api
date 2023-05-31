class MatchesController < ApplicationController

  def index
    matches = Match.all
    render json: { matches: Matches::MatchesPresenter.new(matches).as_json }, status: :ok
  end

  def show
    match = Match.find_by_id(params[:id])
    if match
      render json: Matches::MatchPresenter.new(match).as_json, status: :ok
    else
      render json: { error: "No matches with id as #{params[:id]}" }, status: :not_found
    end
  end

  def score
    match = Match.find_by_id(params[:id])
    if match
      render json: Matches::ScorePresenter.new(match).as_json, status: :ok
    else
      render json: {error: "No match found with id as #{params}"}, status: :not_found
    end
  end
end
