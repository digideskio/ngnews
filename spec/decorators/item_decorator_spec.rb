require "rails_helper"

describe ItemDecorator do
  let(:item) { build :item, start_date: 2.days.ago }
  let(:event_item) { build :item, category: "event", start_date: "2015-04-13", end_date: "2015-04-16" }
  subject { item.decorate }

  describe "#body" do
    it "delegates to item" do
      expect(subject.body).to eq item.body
    end
  end

  describe "#display_date" do
    it "displays duration" do
      expect(subject.display_date).to eq "2 days ago"
    end

    context "category:event" do
      subject { event_item.decorate }

      it "displays time ago in words" do
        expect(subject.display_date).to eq "2015-04-13 - 2015-04-16"
      end
    end
  end
end
