require 'rails_helper'

describe "Show edit paper page", type: :feature do

   it "should be able to add multiple authors to a paper" do
    @paper = FactoryBot.create :paper
    @first_author = Author.create(first_name: 'Alan', last_name: 'Turing')
    @second_author = Author.create(first_name: 'Another', last_name: 'Author')
    
    visit edit_paper_path(@paper)
    page.select(@first_author.name)
    page.select(@second_author.name)
    find('input[type="submit"]').click

    expect(@paper.authors.first.name).to eq('Alan Turing')
    expect(@paper.authors.second.name).to eq('Another Author')
  end

end