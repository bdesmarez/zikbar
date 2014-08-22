class BarForm < Reform::Form
  property :name
  property :address
  property :city
  property :country
  property :zik_style_id
  property :drink_style_id

  validates :name,    presence: true
  validates :city,    presence: true
  validates :country, presence: true

  def self.reflect_on_association(association)
    Bar.reflect_on_association(association)
  end
end
