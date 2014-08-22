require "rails_helper"

RSpec.describe Bars::PopularityUpdateService do
  subject(:service) { Bars::PopularityUpdateService.new() }

  let(:bar)         { FactoryGirl.create(:bar) }
  let(:drink_style) { DrinkStyle.create(name: "Rhum") }
  let(:zik_style)   { ZikStyle.create(name: "Twerk") }

  describe "#call" do
    it "returns a decimal" do

    end
  end
end
