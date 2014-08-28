class Bar < ActiveRecord::Base
  searchkick text_start: [:name]

  belongs_to :drink_style
  belongs_to :zik_style

  validates_uniqueness_of :name, scope: [:city, :country]

  def search_data
    {
      name:         name,
      city:         city,
      country:      country,
      drink_style:  drink_style ? drink_style.name : nil,
      zik_style:    zik_style ? zik_style.name : nil
    }
  end
end
