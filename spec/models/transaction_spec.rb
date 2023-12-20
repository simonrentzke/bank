require 'rails_helper'

RSpec.describe Transaction, type: :model do
  let(:user) { User.create!(name: "John Doe", email: 'john@example.com') }
  let(:account) { Account.create!(account_number: "123", user: user) }
  
  it "should create valid transaction" do
    transaction = account.transactions.new(transaction_type: "deposit", amount: 100)
    expect(transaction).to be_valid
    expect {
      transaction.save
    }.to change(Transaction, :count).by(1)
  end
end
