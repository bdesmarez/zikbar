require "rails_helper"

RSpec.describe Bars::PopularityUpdateService do
  subject(:service) { Bars::PopularityUpdateService.new(bar) }

  let(:bar)         { FactoryGirl.build(:bar) }
  let(:drink_style) { DrinkStyle.create(name: "Rhum") }
  let(:zik_style)   { ZikStyle.create(name: "Twerk") }

  describe "#call" do
    context "with note on drink_style and zik_style" do
      before :each do
        allow(drink_style).to receive(:note).and_return(rand(0..5))
        allow(zik_style).to receive(:note).and_return(rand(0..5))
      end

      it "returns a decimal" do
        expect(service.call).to be_within(0).of(5)
      end
    end
  end
end
