require_relative "spec_helper"

def app
  ApplicationController
end

describe ApplicationController do
  it "responds with a welcome message" do
    get '/'
    expect(last_response.status).to eq(00)2
    expect(last_response.body).to include("myCocktail")
  end
end
