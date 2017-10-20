require 'httparty'

describe "postcode" do

  before(:all) do
    @postcode = JSON.parse(HTTParty.get('https://api.postcodes.io/postcodes/rm164hj').body)
  end

  it "quality should be a number between 1 and 9" do
    expect(@postcode["result"]["quality"]).to be_between(1, 9).inclusive
  end

  it "status should be integer" do
    expect(@postcode["status"]).to be_kind_of(Integer)
  end

  it "postcode should be a string" do
    expect(@postcode["result"]["postcode"]).to be_kind_of(String)
  end

  it "eastings should be an integer or null" do
    expect(@postcode["result"]["eastings"]).to be_kind_of(Integer)
  end

  it "northings should be an interger or null" do
    expect(@postcode["result"]["northings"]).to be_kind_of(Integer)
  end

  it "country should be a string" do
    expect(@postcode["result"]["country"]).to be_kind_of(String)
  end

end

# puts HTTParty.get('https://postcodes.io/postcodes/rm164hj').body

# postcodes_call = HTTParty.get('http://api.postcodes.io/postcodes/rm164hj')
#
# p postcodes_call.body.class
