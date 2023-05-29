class UsersController < ApplicationController
  def create
    user = User.new(user_params)
    auth_token = user.generate_auth_token_hash
    user.auth_token_hash = Digest::SHA256.hexdigest(auth_token)

    if user.save
      render json: {
        user: {
          id: user.id,
          name: user.name,
          email: user.email,
          preferences: user.preferences
        },
        auth_token: auth_token
      }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end
end
