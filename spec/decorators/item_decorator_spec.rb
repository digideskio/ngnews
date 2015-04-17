require "rails_helper"

describe ItemDecorator do
  let(:item) { build :item }
  subject { item.decorate }

  describe "#body" do
    it "delegates to item" do
      expect(subject.body).to eq item.body
    end
  end
end
