require "rails_helper"

RSpec.describe DrinkStyle, type: :model do
  it { is_expected.to have_attr_accessor(:name) }
end
