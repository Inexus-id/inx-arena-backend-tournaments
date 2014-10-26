class UserController < ApplicationController
  def sign_up
    @user = User.new(params[:id])
  end

  def sign_in
    @user = User.find([:id]).first
  end

  def reset_password
  end
end
