require 'httparty'

describe "postcode" do

  before(:all) do
    @postcode = JSON.parse(HTTParty.get('https://api.postcodes.io/postcodes/rm164hj').body)
  end

  it "status should be a number between 1 and 500" do
    expect(@postcode["status"]).to be_between(1, 500).inclusive
  end

  it "quality should be a number between 1 and 9" do
    expect(@postcode["result"]["quality"]).to be_between(1, 9).inclusive
  end

  it "longitude should be a number between 0 and 100" do
    expect(@postcode["result"]["longitude"]).to be_between(0, 100).inclusive
  end
  it "latitude should be a number between 0 and 100" do
    expect(@postcode["result"]["latitude"]).to be_between(0, 100).inclusive
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

  it "nhs ha should be a string" do
    expect(@postcode["result"]["nhs_ha"]).to be_kind_of(String)
  end

  it "longitude should be a string" do
    expect(@postcode["result"]["longitude"]).to be_kind_of(Float)
  end

  it "latitude should be a string" do
    expect(@postcode["result"]["latitude"]).to be_kind_of(Float)
  end

  it "european electoral region should be a string" do
    expect(@postcode["result"]["european_electoral_region"]).to be_kind_of(String)
  end

  it "primary care trust region should be a string" do
    expect(@postcode["result"]["european_electoral_region"]).to be_kind_of(String)
  end

  it "region should be a string" do
    expect(@postcode["result"]["region"]).to be_kind_of(String)
  end

  it "lsoa should be a string" do
    expect(@postcode["result"]["lsoa"]).to be_kind_of(String)
  end

  it "msoa should be a string" do
    expect(@postcode["result"]["msoa"]).to be_kind_of(String)
  end

  it "incode should be a string" do
    expect(@postcode["result"]["incode"]).to be_kind_of(String)
  end

  it "outcode should be a string" do
    expect(@postcode["result"]["outcode"]).to be_kind_of(String)
  end

  it "parliamentary constituency should be a string" do
    expect(@postcode["result"]["parliamentary_constituency"]).to be_kind_of(String)
  end

  it "admin district should be a string" do
    expect(@postcode["result"]["admin_district"]).to be_kind_of(String)
  end

  it "parish should be a string" do
    expect(@postcode["result"]["parish"]).to be_kind_of(String)
  end

  # it "admin county should be set to null" do
  #   expect(@postcode["result"]["admin_county"]).to be_kind_of(Null)
  # end

  it "admin ward should be a string" do
    expect(@postcode["result"]["admin_ward"]).to be_kind_of(String)
  end

  it "ccg should be a string" do
    expect(@postcode["result"]["ccg"]).to be_kind_of(String)
  end

  it "nuts should be a string" do
    expect(@postcode["result"]["nuts"]).to be_kind_of(String)
  end

  it "admin district in codes should be a string" do
    expect(@postcode["result"]["codes"]["admin_district"]).to be_kind_of(String)
  end

  it "admin county in codes should be a string" do
    expect(@postcode["result"]["codes"]["admin_county"]).to be_kind_of(String)
  end

  it "admin ward in codes should be a string" do
    expect(@postcode["result"]["codes"]["admin_ward"]).to be_kind_of(String)
  end

  it "parish in codes should be a string" do
    expect(@postcode["result"]["codes"]["parish"]).to be_kind_of(String)
  end

  it "parliamentary constituency in codes should be a string" do
    expect(@postcode["result"]["codes"]["parliamentary_constituency"]).to be_kind_of(String)
  end

  it "ccg in codes should be a string" do
    expect(@postcode["result"]["codes"]["ccg"]).to be_kind_of(String)
  end

  it "nuts in codes should be a string" do
    expect(@postcode["result"]["codes"]["nuts"]).to be_kind_of(String)
  end

end
