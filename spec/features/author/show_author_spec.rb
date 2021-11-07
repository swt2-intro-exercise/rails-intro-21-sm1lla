require 'rails_helper'

describe "Show author page", type: :feature do
    it "should exist at 'author_path(@alan)' and render without error" do
        @alan = FactoryBot.create :author
        visit author_path(@alan)
        expect(page).to have_text("Alan Turing")
    end
end