require 'rails_helper'

RSpec.describe StaticPagesController, type: :controller do

  describe "GET #home", :type => :feature do   
    it "returns http success" do
      visit "/"
      expect(response).to have_http_status(:success)
      expect(page).to have_content("Sample App")
    end
  end

  describe "GET #help" do
    it "returns http success" do
      get :help
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #about" do
    it "returns http success" do
      get :about
      expect(response).to have_http_status(:success)
    end
  end

end
