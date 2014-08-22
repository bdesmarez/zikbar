require "rails_helper"

RSpec.describe Bar, type: :model do
  it { is_expected.to belong_to(:zik_style) }
  it { is_expected.to belong_to(:drink_style) }
end
