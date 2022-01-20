class Genre
  attr_accessor :name, :items

  def initialize(_name)
    super(publish_date)
    @items = []
    @id = Random.rand(1..1000)
  end

  def add_item(item)
    items.add_genre(self)
    @items.push(item) unless @items.include?(item)
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'id' => @id,
      'name' => @name,
      'items' => @items
    }.to_json(*args)
  end
end
