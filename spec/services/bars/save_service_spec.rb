require "rails_helper"

RSpec.describe Bars::SaveService do
  subject(:service) { Bars::SaveService.new(form, params) }

  let(:bar)         { Bar.new }
  let(:drink_style) { DrinkStyle.create(name: "Rhum") }
  let(:form)        { BarForm.new(bar) }

  let(:params) do
    {
      bar: {
        name:         "Mon cul",
        address:      "Sur la commode",
        city:         "Montcuq",
        country:      "France",
        drink_style:  drink_style,
        zik_style:    zik_style
      }
    }
  end

  let(:zik_style) { ZikStyle.create(name: "Twerk") }

  describe "#call" do
    context "form is valid" do
      before :each do
        allow(form).to receive(:validate).and_return(true)
      end

      it "returns true" do
        allow(form).to receive(:save).and_return(true)
        expect(service.call).to eq(true)
      end

      it "creates a new Bar" do
        service.call
        expect(bar.persisted?).to eq(true)
      end

    end

    context "form is not valid" do
      before :each do
        allow(form).to receive(:validate).and_return(false)
      end

      it "returns false" do
        expect(service.call).to eq(false)
      end

      it "doesn't create a new Bar" do
        service.call
        expect(bar.new_record?).to eq(true)
      end
    end
  end
end
