# frozen_string_literal: true

class Account < ApplicationRecord
  belongs_to :user
  has_many :transactions, dependent: :destroy
  validates :account_number, presence: true, uniqueness: true

  def update_balance!
    update!(balance: transactions.sum(:amount))
  end
end
