# frozen_string_literal: true

class AccountsController < ApplicationController
  before_action :find_user

  def index
    @accounts = @user.accounts.all
  end
end
