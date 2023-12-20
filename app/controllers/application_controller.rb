# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def find_user
    @user = User.find(params[:user_id])
  end
end
