require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:user) { User.create!(name: "John Doe", email: 'test@example.com') }

  it "should create account for user" do
    expect {
      user.accounts.create(account_number: "1234567890")
    }.to change(Account, :count).by(1)
  end

  it "should be invalid account" do
    account = Account.new
    expect(account).not_to be_valid
  end

  context "balance updates" do
    let(:account) { user.accounts.create(account_number: "1234567890") }
    # ensure the update_balance! method works as expected
  end
end
