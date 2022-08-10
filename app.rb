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

  def list_music_albums
    @music_album.each do |_album|
      puts "[#{album.class}] - Publish Date: #{album.publish_date}"
    end
  end

  def list_genre
    @genre.each do |_genre|
      puts "[#{genre.class}] - Name: #{genre.name}"
    end
  end

  def create_music_album(publish_date, archived: false, on_spotify: false)
    @music_album = MusicAlbum.new(publish_date, archived: archived, on_spotify: on_spotify)
  end

  def create_genre(name)
    @genre = Genre.new(name)
  end

  def create_book(publish_date, publisher, cover_state, id = nil, archived: false)
    @book = Book.new('20/10/2021', 'NY Times', 'good', 2)
end
