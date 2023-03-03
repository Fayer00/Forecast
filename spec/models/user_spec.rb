# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'valid object' do
    subject do
      create(:user)
    end

    it 'is valid with valid attributes' do
      expect(subject).to be_valid
    end

    it 'is not valid without a name' do
      subject.email = nil
      expect(subject).not_to be_valid
    end

    it 'is not valid without a value' do
      subject.password = nil
      expect(subject).not_to be_valid
    end
  end
end
