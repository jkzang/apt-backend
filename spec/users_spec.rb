require 'rails_helper'

RSpec.describe "Users", type: :request do
  describe "GET /users/:id" do
    let(:user){ User.create name: 'Bob', email: 'bob@bobber.com', password: 'secret'}
    let(:auth_header) do
      token = Knock::AuthToken.new(payload: {sub: user.id}).token
      {
        'Authorization': "Bearer #{token}"
      }
    end

    #.... other user tests

    it "creates a user" do
      payload = {
        user: {
          name: 'Jill',
          email: 'jill@jiller.com',
          password: 'secret',
          password_confirmation: 'secret'
        }
      }

      post users_path, params: payload
      expect(response).to have_http_status(201)
      json = JSON.parse(response.body)
      expect(json["user"]["name"]).to eq "Jill"
      expect(json["jwt"]).to_not be_blank
    end

    it "should return errors when fails to create" do
      payload = {
        user: {
          name: 'Jill',
          email: 'jill@jiller.com',
          password: 'secret',
          password_confirmation: 'wrong password'
        }
      }

      post users_path, params: payload
      expect(response).to have_http_status(422)
      json = JSON.parse(response.body)
      expect(json["errors"]["password_confirmation"]).to_not be_blank
    end
  end
end
