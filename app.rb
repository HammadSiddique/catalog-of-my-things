require_relative './album/music_album'
require_relative './book/book'
require_relative './genre/genre'
require_relative './label/label'

class App
  def initialize
    @book = []
    @label = []
    @music_album = []
    @genre = []
  end

  def list_books
    @book.each do |b|
      puts "[#{b.class}} - Publish Date: #{b.publish_date} Publisher: #{b.publisher} Cover State: #{b.cover_state}"
    end
  end

  def list_labels
    @label.each do |label|
      puts "[#{label.class}] - Title: #{label.title}"
    end
  end

  def list_music_albums
    @music_album.each do |album|
      puts "[#{album.class}] - Publish Date: #{album.publish_date}"
    end
  end

  def list_genre
    @genre.each do |genre|
      puts "[#{genre.class}] - Name: #{genre.name}"
    end
  end

  def create_music_album(publish_date, archived: false, on_spotify: false)
    @music_album = MusicAlbum.new(publish_date, archived: archived, on_spotify: on_spotify)
  end

  def create_genre(name)
    @genre = Genre.new(name)
  end

  def create_book(_publish_date, _publisher, _cover_state, _id = nil, archived: false)
    @book = Book.new('20/10/2021', 'NY Times', 'good', 2, archived: archived)
  end

  def create_label(_title)
    @label = Label.new('Comedy')
  end
end
