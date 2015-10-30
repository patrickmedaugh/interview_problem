require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  let(:user){
    User.create(first_name: "Bill", last_name: "Jones", email: "bill@jones.com", social_security_number: "987654321")
  }

  it 'create' do
    get :create, :user => {:first_name => "Bill", :last_name => "Billiams", :email => "bill@yahoo.com", :social_security_number => "987654321", :format => :json }
    expect(response).to redirect_to user_path(1)
  end

  it 'show' do
    user
    get :show, id: user.id, :format => :json
    expect(response.content_type).to eq('application/json')
  end

  it 'index' do
    get :index, :format => :json
    expect(response.content_type).to eq('application/json')
  end
end
