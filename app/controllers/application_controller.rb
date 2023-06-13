class ApplicationController < ActionController::API
  def authenticate_auth_token
    header = request.headers['Authorization']
    auth_token = header.split(' ').last if header

    @user =
      User.find_by(
        auth_token_hash: Digest::SHA256.base64digest(auth_token)
      ) if header

    unless @user
      render json: { errors: ['Invalid auth token'] }, status: :unauthorized
    end
  end
end
