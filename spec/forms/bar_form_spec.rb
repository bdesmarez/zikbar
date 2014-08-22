require "rails_helper"

RSpec.describe BarForm do
  subject(:form) { BarForm.new(bar) }

  let(:bar) { Bar.new }

  it { is_expected.to have_attr_accessor(:name) }
  it { is_expected.to have_attr_accessor(:city) }
  it { is_expected.to have_attr_accessor(:country) }

  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:country) }
end
