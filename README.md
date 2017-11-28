# HTTParty

## Summary
The main objective for this activity was to test the Postcodes API utilising JSON, HTTParty and RSpec. This activity was written in Ruby and demonstrates simple tests which find matches from particular hashes, such as admin district, parliamentary constituency and latitude.

Postcodes API is a free-to-use application programming interface that enables programmers to search and filter through the 1.8 million available postcodes of the United Kingdom.

## Prerequisites
Run the following commands in your terminal to get the required gem dependencies:
* gem install httparty
* gem install json

## Postcodes API
* GET: 'https://api.postcodes.io/postcodes/rm164hj'

## Example Test Case
```
  it "status should be a number between 1 and 500" do
      expect(@postcode["status"]).to be_between(1, 500).inclusive
    end

  it "quality should be a number between 1 and 9" do
    expect(@postcode["result"]["quality"]).to be_between(1, 9).inclusive
  end
```
