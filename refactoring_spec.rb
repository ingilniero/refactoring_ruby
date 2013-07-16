require 'customer'
require 'movie'
require 'rental'

describe "Statemens results" do
  before do
    @customer1 = Customer.new "Le customer 1"
    @customer2 = Customer.new "Le customer 2"
    @customer3 = Customer.new "Le customer 3"

    @movie1 = Movie.new "Titanic", RegularPrice.new
    @movie2 = Movie.new "Pacific Rim", NewReleasePrice.new
    @movie3 = Movie.new "Monster Inc", ChildrensPrice.new
    @movie4 = Movie.new "World War Z", NewReleasePrice.new
    @movie5 = Movie.new "Aladdin", ChildrensPrice.new
    @movie6 = Movie.new "Batman the Dark Knight", RegularPrice.new

    @rental1 = Rental.new @movie2, 4
    @rental2 = Rental.new @movie5, 2

    @rental3 = Rental.new @movie1, 3
    @rental4 = Rental.new @movie4, 1

    @rental5 = Rental.new @movie3, 5
    @rental6 = Rental.new @movie6, 6

    @customer1.add_rental @rental1
    @customer1.add_rental @rental2

    @customer2.add_rental @rental3
    @customer2.add_rental @rental4

    @customer3.add_rental @rental5
    @customer3.add_rental @rental6
  end

  it "prints the statement for customer 1" do
    expect(@customer1.statement).to include("Amount owed is 13.5")
  end

  it "prints the statement for customer 2" do
    expect(@customer2.statement).to include("Amount owed is 6.5")
  end

  it "prints the statement for customer 3" do
    expect(@customer3.statement).to include("Amount owed is 12.5")
  end
end
