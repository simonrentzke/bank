# frozen_string_literal: true

class Transaction < ApplicationRecord
  belongs_to :account

  after_commit :update_balance
  after_commit :do_expensive_external_operation_that_is_not_important_to_the_user

  protected

  def update_balance
    account.update_balance!
  end

  def do_expensive_external_operation_that_is_not_important_to_the_user
    # ... a bunch of code that takes a long time to run, and talks to an external service
  end
end
