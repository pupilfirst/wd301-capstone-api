class UsersController < ApplicationController
  wrap_parameters false
  before_action :authenticate_auth_token, only: [:me, :get_preferences, :update_preferences, :update_password]

  # POST /users
  def create
    user = User.new(user_params)
    auth_token = user.generate_auth_token

    if user.save
      render json: {
        user: user_to_json(user),
        auth_token: auth_token
      }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # GET /users/me
  def me
    render json: @user.as_json(only: [:id, :name, :email, :preferences]), status: :ok
  end

  # GET /users/me/preferences
  def get_preferences
    if @user
      render json: @user.as_json(only: [:preferences]), status: :ok
    end
  end

  # PATCH /users/me/preferences
  def update_preferences
    if @user.update!(preferences_params)
      render json: @user.as_json(only: [:preferences]), status: :ok
    else
      render json: { errors: @user.errors.full_messages }, status: :unprocessable_entity
    end
  end

  # PATCH /users/me/update_password
  def update_password
    if @user.authenticate(update_password_params[:current_password])
      if @user.update(password: update_password_params[:new_password])
        render json: { status: 'success' }, status: :ok
      else
        render json: { status: 'error', message: 'Password update failed' }, status: :unprocessable_entity
      end
    else
      render json: { status: 'error', message: 'Invalid current password' }, status: :unprocessable_entity
    end
  end

  # POST /users/sign_in
  def sign_in
    user = User.find_by(email: user_params[:email])

    if user && user.authenticate(user_params[:password])
      token = user.generate_auth_token
      user.save!
      render json: { user: user_to_json(user), auth_token: user.auth_token_hash }, status: :ok
    else
      render json: { errors: ['Invalid email or password'] }, status: :unauthorized
    end
  end

  private

  def user_params
    params.permit(:name, :email, :password)
  end

  def preferences_params
    params.permit(preferences: {})
  end

  def update_password_params
    params.permit(:current_password, :new_password)
  end

  def user_to_json(user)
    user.as_json(only: [:id, :name, :email, :preferences])
  end
end
