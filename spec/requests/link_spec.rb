require 'rails_helper'

RSpec.describe "Links", type: :request do
  @link = Link.create!(url: "www.test.com")

  it 'root' do
    get root_url
    expect(response).to be_successful
  end

  describe "GET /show" do
    it "renders a successful response" do
      get "/link/1"
      expect(response).to be_successful
    end

    it "shows video attributes" do
      get "/link/1"
      expect(response.body).to include("Your short link")
    end
  end
end
