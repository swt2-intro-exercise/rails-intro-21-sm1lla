require 'rails_helper'

describe "Show edit author page", type: :feature do
    it "should exist a page at authors/@author/edit and render without error" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
    end

    it "should have text inputs for an author's first name, last name, and homepage" do
        @alan = FactoryBot.create :author
        visit edit_author_path(@alan)
        expect(page).to have_field('author[first_name]')
        expect(page).to have_field('author[last_name]')
        expect(page).to have_field('author[homepage]')
    end

    it "should change displayed information after submitting new information" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
        expect(page).to have_text('Alan Turing', 'http://wikipedia.org/Alan_Turing')
        visit edit_author_path
        page.fill_in 'author[last_name]', with: 'New'
        page.fill_in 'author[first_name]', with: 'Name'
        page.fill_in 'author[homepage]', with: 'page'
        find('input[type="submit"]').click
        @alan.reload
        expect(page).to have_text('New Name', 'page')
    end

end