class MatchesController < ApplicationController
  def index
    matches = Match.all
    render json: { matches: MatchesPresenter.index(matches) }, status: :ok
  end

  def show
    match = Match.find_by(id: params[:id])
    if match
      render json: MatchesPresenter.show(match), status: :ok
    else
      render json: {
               error: "No matches with id as #{params[:id]}"
             },
             status: :not_found
    end
  end
end
