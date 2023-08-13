require 'jwt'

class ApplicationController < ActionController::API
  SECRET_KEY_BASE = Rails.application.credentials.secret_key_base

  def parse_authorization
    bearer = request.authorization
    return unless bearer.present? && bearer.start_with?('Bearer')

    bearer.split(' ')[1]
  end

  def authenticate_user
    token = parse_authorization
    user_id = decode(token)
    @current_user = User.find_by_id(user_id)
  rescue StandardError
    render json: { message: 'invalid request' }, status: :bad_request
  end

  private

  # return user id
  def decode(token)
    decoded_token = JWT.decode(token, SECRET_KEY_BASE, true, { algorithm: 'HS256' })
    decoded_token[0]['id']
  rescue JWT::InvalidAudError
    render json: { message: 'invalid authorization' }, status: :unauthorized
  rescue JWT::VerificationError
    render json: { message: 'invalid authorization' }, status: :unauthorized
  end
end
