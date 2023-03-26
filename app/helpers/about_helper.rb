# frozen_string_literal: true

module AboutHelper
  INAUGURATION_DATE = '2001-06-01'

  def years_since_inauguration
    current_date = Time.current
    inauguration_date = Date.parse(INAUGURATION_DATE)
    years = (current_date.year - inauguration_date.year)
    years -= 1 if current_date.year < inauguration_date.year

    years
  end
end
