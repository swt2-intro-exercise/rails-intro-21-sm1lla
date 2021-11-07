require 'rails_helper'

RSpec.describe Author, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "should return full name with method name" do
    a = Author.new(first_name: "Alan", last_name: "Turing")
    expect(author.name).to eq("Alan Turing")
  end
end
