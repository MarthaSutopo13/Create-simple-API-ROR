class UserController < ApplicationController
  # skip_before_filter :verify_authenticity_token

  def login_user
    # binding.pry

    respond_to do |format|
      format.json{
        if params[:username].nil? || params[:password].nil?
          render json: {message: 'Error', data: {username: params[:username].nil? ? "" : params[:username], password: params[:password].nil? ? "" : params[:password]}}, status: 500
        else
          render json: {message: 'success', data: {username: params[:username], password: params[:password]}}
        end
      }
    end
  end
end
