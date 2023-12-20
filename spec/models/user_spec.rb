require 'rails_helper'

RSpec.describe User, type: :model do
  it "should create valid user" do
    user = User.new(name: "John Doe", email: 'john@example.com')
    expect(user).to be_valid
  end

  it "should be invalid user" do
    user = User.new
    expect(user).not_to be_valid
  end
end
