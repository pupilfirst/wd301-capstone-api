class ApplicationController < ActionController::API

  def authenticate_auth_token
    header = request.headers['Authorization']
    auth_token = header.split(' ').last if header

    @user = User.find_by(auth_token_hash: Digest::SHA256.hexdigest(auth_token)) if header

    render json: { errors: ['Invalid auth token'] }, status: :unauthorized unless @user
  end
end
