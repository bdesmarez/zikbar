require "rails_helper"

RSpec.describe Bars::PopularityUpdateService do
  subject(:service) { Bars::PopularityUpdateService.new(bar) }

  let(:bar)         { FactoryGirl.build(:bar) }

  describe "#call" do
    context "when there are note and drink style and zik style" do
      before :each do
        allow(bar.drink_style).to receive(:note).and_return(2)
        allow(bar.zik_style).to receive(:note).and_return(4)
      end

      it 'sets popularity value to avg(drink.note / zik.note)' do
        service.call
        expect(bar.popularity).to eq(3)
      end
    end

    context "when drink_style is nil" do
      before :each do
        allow(bar).to receive(:drink_style).and_return(nil)
      end

      it 'sets the popularity to nil' do
        service.call
        expect(bar.popularity).to be_nil
      end
    end

    context "when zik_style is nil" do
      before :each do
        allow(bar).to receive(:zik_style).and_return(nil)
      end

      it 'sets the popularity to nil' do
        service.call
        expect(bar.popularity).to be_nil
      end
    end

    context "when drink_style note is nil" do
      before :each do
        allow(bar.drink_style).to receive(:note).and_return(nil)
      end

      it 'sets the popularity to nil' do
        service.call
        expect(bar.popularity).to be_nil
      end
    end

    context "when zik_style note is nil" do
      before :each do
        allow(bar.zik_style).to receive(:note).and_return(nil)
      end

      it 'sets the popularity to nil' do
        service.call
        expect(bar.popularity).to be_nil
      end
    end

    context "when drink_style and zik_style note are nil" do
      before :each do
        allow(bar.drink_style).to receive(:note).and_return(nil)
        allow(bar.zik_style).to receive(:note).and_return(nil)
      end

      it 'sets the popularity to nil' do
        service.call
        expect(bar.popularity).to be_nil
      end
    end

  end
end
