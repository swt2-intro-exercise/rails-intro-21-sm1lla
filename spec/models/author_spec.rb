require 'rails_helper'

RSpec.describe Author, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
  it "should return full name with method name" do
    author = Author.new(first_name: "Jane", last_name: "Doe")
    expect(author.name).to eq("Jane Doe")
  end
end
