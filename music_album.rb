require_relative 'item'

class MusicAlbum < Item
  attr_accessor :on_spotify, :publish_date, :archived

  def initialize(publish_date:, name: 'unknown', on_spotify: true, archived: archived)
    super(publish_date: publish_date, name: name, archived: archived)
    @on_spotify = on_spotify
  end
  def can_be_archived?
    @on_spotify && super
  end

  def to_json(*args)
    {
      'JSON.create_id' => self.class.name,
      'name' => @name,
      'publish_date' => @publish_date,
      'on_spotify' => @on_spotify,
      'archived' => @archived
  }.to_json(*args)

end
