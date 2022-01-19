require_relative './item'

class Movie < item
  attr_reader :

  # rubocop:disable Metrics/ParameterLists
  def initialize(genre, author, source, label, publish_date, silent)
    super(genre, author, source, label, publish_date)
    @silent = silent
  end
  # rubocop:enable Metrics/ParameterLists

  def can_be_archived?
    super or silent
  end
end
