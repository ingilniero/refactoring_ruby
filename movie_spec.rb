require 'movie'

describe Movie do
  before do
    @regular = RegularPrice.new
    @movie = Movie.new "Titanic", @regular
  end

  it "has a title" do
    expect(@movie.title).to eq("Titanic")
  end
end
