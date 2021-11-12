require 'rails_helper'

describe "Show paper page", type: :feature do

  it "should display papers written in the specified year" do
    @paper1 = Paper.create(title: "Title", venue: "venue", year: 1950)
    @paper2 = Paper.create(title: "Hello", venue: "world", year: 1968)
    visit papers_path
    expect(page).to have_text('Title')
    expect(page).to have_text('Hello')
    visit papers_path(year: 1950)
    expect(page).to_not have_text('Hello')
    expect(page).to have_text('Title')
  end

end