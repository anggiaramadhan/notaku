# frozen_string_literal: false

module Api
  # login controller
  class SessionsController < ApplicationController
    def create
      @user = User.find_by(email: login_params[:email])
      if @user.present? && @user.authenticate(login_params[:password])
        render json: { token: @user.token }, status: :ok
      else
        render json: { message: 'login failed' }, status: :not_found
      end
    end

    private

    def login_params
      params.required(:session).permit(:email, :password)
    end
  end
end
