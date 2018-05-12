require 'rails_helper'

RSpec.describe "pages", type: :routes do
  describe "routes" do
    it "GET / routes to pages#index" do
      expect(get("/")).to route_to({:controller => "pages", :action => "index"})
    end

    it "GET /help routes to pages#help" do
      expect(get("/help")).to route_to({:controller => "pages", :action => "help"})
    end

    it "GET /privacy routes to pages#privacy" do
      expect(get("/privacy")).to route_to({:controller => "pages", :action => "privacy"})
    end
  end

  describe "helpers" do
    it "#home_url generates https://test.epetitions.website:3443/" do
      expect(home_url).to eq("https://test.epetitions.website:3443/")
    end

    it "#help_url generates https://test.epetitions.website:3443/help" do
      expect(help_url).to eq("https://test.epetitions.website:3443/help")
    end

    it "#privacy_url generates https://test.epetitions.website:3443/privacy" do
      expect(privacy_url).to eq("https://test.epetitions.website:3443/privacy")
    end
  end
end
