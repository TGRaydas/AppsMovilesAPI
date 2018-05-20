class AuthenticateController < ApplicationController
  def authenticate
    command = User.where(user:params[:email], password:params[:password]).first
    token = command[:token]
    if !command.nil?
      render :json => command[:token]
    else
      render json: { error: "Non-Authorized" }, status: :unauthorized
    end
  end
end
