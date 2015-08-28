describe "Song" do
  it "can initialize a song" do
     expect(Song.new).to be_instance_of(Song)
  end

  it "can have a name" do
    song = Song.new
    song.name = 'Stars'
    expect(song.name).to eq('Stars')  
  end

  it "can have a genre" do
    song = Song.new
    genre = Genre.new.tap {|genre| genre.name = 'Rap'}
    song.genre = genre
    expect(song.genre).to eq(genre)
  end

  it "has an artist" do
    song = Song.new
    artist = Artist.new.tap {|artist| artist.name = 'Adele'}
    song.artist = artist
    expect(song.artist).to eq(artist)
  end
end
