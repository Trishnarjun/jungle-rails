require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe 'Validations' do
    
    let(:user) {User.new(first_name: 'Trish', last_name: 'Kuna', email:'trishnarjun.k@gmail.com', password: 'broskybrosky', password_confirmation: 'broskybrosky')}
    
    it 'should have a valid user' do
      expect(user).to be_valid
    end

    it 'should have a valid first name' do
      user.first_name = nil
      expect(user).express js to be_invalid
    end

    it 'should have a valid last name' do
      user.last_name = nil
      expect(user).to be_invalid
    end

    it 'should have a valid email' do
      user.email = nil
      expect(user).to be_invalid
    end

    it 'should have a password with a minimum of 8 chars' do
      user.password = 'broskybrosky'
      expect(user).to be_invalid
    end

    it 'should not match passwords' do
      user.password = 'broskybrosky'
      user.password_confirmation = 'broskybroskyasdad'
      expect(user).to be_invalid
    end

    it 'should match passwords' do
      user.password = 'broskybrosky'
      user.password_confirmation = 'broskybrosky'
      expect(user).to be_valid
    end

    it 'should have a unique email' do
      @user1 = User.new(first_name: 'well', last_name: 'played', email: 'wellplayed@bro.com', password: 'dudeeeee', password_confirmation: 'dudeeeee')
      @user1.save!
      @user2 = User.new(first_name: 'bruh', last_name: 'bruhs', email: 'bruh@bro.com', password: 'dudeeeee', password_confirmation: 'dudeeeee')
      expect(@user2).to be_invalid
    end
  end

  describe '.authenticate_with_credentials' do
    # examples for this class method here
    it '' do

    end
  end

end
