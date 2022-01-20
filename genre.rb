class Genre
  attr_accessor :name, :items

  def initialize(name)
    super(publish_date)
    @items = []
    @id = Random.rand(1..1000)
  end

  def add_item(item)
    items.add_genre(self)
    @items.push(item) unless @items.include?(item)
  end

  
end
