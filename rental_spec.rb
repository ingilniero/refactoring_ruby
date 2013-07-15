require 'rental'

describe Rental do
  before do
    @rental = Rental.new("Titanic", 3)
  end

  it "has a movie" do
    expect(@rental.movie).to eq("Titanic")
  end

  it "has days rented" do
    expect(@rental.days_rented).to eq(3)
  end
end
