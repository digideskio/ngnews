require "rails_helper"

describe ItemDecorator do
  let(:item) { build :item, start_date: 2.days.ago }
  subject { item.decorate }

  describe "#body" do
    it "delegates to item" do
      expect(subject.body).to eq item.body
    end
  end

  describe "#display_date" do
    it "displays time ago in words" do
      expect(subject.display_date).to eq "2 days ago"
    end
  end
end
