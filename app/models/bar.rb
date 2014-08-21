class Bar < ActiveRecord::Base
  belongs_to :drink_style
  belongs_to :zik_style

  validates_uniqueness_of :name, scope: [:city, :country]
end
