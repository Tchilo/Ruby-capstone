class Item
  def initialize(genre, author, source, lable, publish_date)

  end

  def can_be_archived?
    now = DateTime.now.next_year(-10).to_time
  end

  def move_to_archived
    @archived = can_be_archived?
  end
end
