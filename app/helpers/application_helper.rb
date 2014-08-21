module ApplicationHelper

  def country_name(iso_code)
    country = ISO3166::Country[iso_code]
    country.translations[I18n.locale.to_s] || country.name
  end
end
