require 'customer'

describe Customer do
  before do
    @customer = Customer.new "random"
  end

  it "has a name" do
    expect(@customer.name).to eq("random")
  end

  it "has rentals" do
    @customer.respond_to? :rentals
  end

  it "can take rentals" do
    @customer.respond_to? :add_rental
  end

  it "returns a statement" do
    expect(@customer.statement).to be_kind_of(String)
  end
end
