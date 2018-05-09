require 'rails_helper'

RSpec.describe "Site navigation", type: :request do
  describe "How the user can navigate the site" do
    it "Routes from home to contacto page" do
      get static_pages_contact_path
      expect(response).to have_http_status(200)
    end
    it "Routes back to root page" do
      get root_path
      expect(response).to have_http_status(200) 
    end
    it "Has one header and reference to contacto page" do
      get root_path
      assert_select "h1", "Web development is fun!"
      assert_select "a[href=?]", static_pages_contact_path
    end
  end
end
