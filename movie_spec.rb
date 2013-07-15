require 'movie'

describe Movie do
  before do
    @movie = Movie.new "Titanic", 14
  end

  it "has a title" do
    expect(@movie.title).to eq("Titanic")
  end

  it "has a price code" do
    expect(@movie.price_code).to eq(14)
  end
end
