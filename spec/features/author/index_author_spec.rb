require 'rails_helper'

describe "All authors page", type: :feature do
    it "should display information of created Author" do
        Author.create(first_name: "Alan", last_name: "Turing", homepage: "http://wikipedia.org/Alan_Turing")
        visit authors_index_path
        expect(page).to have_text("Alan")
        expect(page).to have_text("Turing")
        expect(page).to have_text("http://wikipedia.org/Alan_Turing")
    end 

    it "should contain a table with headings Name and Homepage" do
        visit authors_index_path
        expect(page).to have_css('table')
        expect(page).to have_css('th', text: 'Name')
        expect(page).to have_css('th', text: 'Homepage')
    end

    it "should have link to the new author page" do
        visit authors_index_path
        expect(page).to have_link 'New', href: new_author_path
    end

    it "should link to the authors' detail pages" do
        @alan = FactoryBot.create :author
        visit authors_index_path
        expect(page).to have_link @alan.name, href: author_path(@alan)
    end
end