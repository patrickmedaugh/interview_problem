require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){
    User.new(first_name: "Bill",
            last_name: "Jones",
            email: "billiam@jones.com",
            social_security_number: "123456789")
  }

  context 'with valid params' do
    it 'is valid' do
      expect(user).to be_valid
    end
  end

  context 'with invalid params' do
    it 'email is invalidated' do
      user.email = "billiam@jones"
      expect(user).to_not be_valid
    end

    it 'social security is invalidated' do
      user.social_security_number = "12345678"
      expect(user).to_not be_valid
    end

    it 'empty first name fields are invalidated' do
      user.first_name = ""
      expect(user).to_not be_valid
    end

    it 'empty last name fields are invalidated' do
      user.last_name = ""
      expect(user).to_not be_valid
    end

  end
end
