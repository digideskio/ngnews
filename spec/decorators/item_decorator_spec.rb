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
    context "start date is equal today date" do
      before do
        allow(subject).to receive(:start_date).and_return(Date.current)
      end

      it "displays Today..." do
        expect(subject.display_date).to eq "Today..."
      end
    end

    context "more than one day ago" do
      it "displays duration" do
        expect(subject.display_date).to eq "3 days ago"
      end
    end

    context "category:event" do
      subject { event_item.decorate }

      it "displays time ago in words" do
        expect(subject.display_date).to eq "2015-04-13 - 2015-04-16"
      end
    end
  end
end
