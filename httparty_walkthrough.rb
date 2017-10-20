require 'httparty'

before(:all) do
  @postcode = JSON.parse(HTTParty.get('https://postcodes.io/postcodes/rm164hj').body)
end

# puts HTTParty.get('https://postcodes.io/postcodes/rm164hj').body

# postcodes_call = HTTParty.get('http://api.postcodes.io/postcodes/rm164hj')
#
# p postcodes_call.body.class

# Positional Quality.Shows the status of the assigned grid reference.
# 1 = within the building of the matched address closest to the postcode mean
# 2 = as for status value 1, except by visual inspection of Landline maps (Scotland only)
# 3 = approximate to within 50m
# 4 = postcode unit mean (mean of matched addresses with the same postcode, but not snapped to a building)
# 5 = imputed by ONS, by reference to surrounding postcode grid references
# 6 = postcode sector mean, (mainly	| PO Boxes)
# 8 = postcode terminated prior to Gridlink® initiative, last known ONS postcode grid reference1
