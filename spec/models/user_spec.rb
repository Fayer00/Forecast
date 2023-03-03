require 'rails_helper'

RSpec.describe User, type: :model do
  describe "valid object" do
    subject {
      create(:user)
    }

    it "is valid with valid attributes" do
      expect(subject).to be_valid
    end

    it "is not valid without a name" do
      subject.email = nil
      expect(subject).to_not be_valid
    end

    it "is not valid without a value" do
      subject.password = nil
      expect(subject).to_not be_valid
    end
  end
end
