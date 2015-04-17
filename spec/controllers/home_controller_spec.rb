require "rails_helper"

describe HomeController, type: :controller do
  describe "GET #index" do
    let(:item) { build :item }

    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end

    it "be successful" do
      get :index
      expect(response).to be_successful
    end
  end
end
