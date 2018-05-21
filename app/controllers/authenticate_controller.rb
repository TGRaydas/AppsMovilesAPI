class AuthenticateController < ApplicationController
  def authenticate
    command = User.where(user:params[:email], password:params[:password]).first
    token = command[:token]
    response.set_header("Authenticate", token)
    if !command.nil?
      render :json => headers
    else
      render json: { error: "Non-Authorized" }, status: :unauthorized
    end
  end
end
