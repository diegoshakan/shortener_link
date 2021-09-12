require 'rails_helper'

RSpec.describe 'ShortLink' do
  before do
    @link = Link.create(url: "https://www.google.com/")
  end

  it "short_url" do
    result = ShortLink.new({ link: @link }).short_url

    expect(result).to eq("http://localhost:3000/h")
  end

  it "redirect_to_link" do
    params = "h"
    result = ShortLink.new({ params: params }).redirect_to_link

    expect(result.url).to eq(@link.url)
  end
end