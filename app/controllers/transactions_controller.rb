# frozen_string_literal: true

class TransactionsController < ApplicationController
  before_action :find_user

  def index
    @transactions = @user.transactions.all.sort_by(&:created_at)
  end

  def new
    @transaction = @user.transactions.new
  end

  def create
    @transaction = @user.transactions.new(transaction_params)
    if @transaction.save
      redirect_to user_transactions_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  protected

  def transaction_params
    params.require(:transaction).permit(:account_id, :transaction_type, :amount)
  end
end
