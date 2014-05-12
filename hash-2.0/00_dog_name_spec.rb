require 'rspec'
require 'rspec/autorun'
require_relative 'dogs'

describe 'Dog' do
  it "returns the dog's name from the hash" do
    expect(DOG[:cattle_dog][:preferences].first[:name]).to eq("Harleigh")
  end
end
