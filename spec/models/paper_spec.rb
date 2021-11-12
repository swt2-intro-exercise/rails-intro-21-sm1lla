require 'rails_helper'

RSpec.describe Paper, type: :model do
  it "should only be valid with a title" do
    @paper = Paper.new(year: 1950, venue: 'example')
    expect(@paper).to_not be_valid
  end

  it "should only be valid with a venue" do
    @paper = Paper.new(title: 'example', year:1950)
    expect(@paper).to_not be_valid
  end

  it "should only be valid with a year which should be a numeric value" do
    @paper = Paper.new(title: 'example', venue: 'test')
    expect(@paper).to_not be_valid
    @paper.year = "test"
    expect(@paper).to_not be_valid
  end

  it "should have an empty list of authors" do
    @paper = Paper.new()
    expect(@paper.authors).to be_empty
  end

end
