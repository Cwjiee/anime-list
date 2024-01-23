require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(email: "test@gmail.com", username: "tester", password: "test123") }

  it "is valid with valid attributes" do
    expect(subject).to be_valid
  end

  it "is not valid without an email" do
    subject.email = nil
    expect(subject).to be_valid
  end

  it "is not valid without a username" do
    subject.username = nil
    expect(subject).to_not be_valid
  end
end
