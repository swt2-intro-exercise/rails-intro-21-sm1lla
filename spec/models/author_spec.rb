require 'rails_helper'

RSpec.describe Author, type: :model do
  it "should return full name with method name" do
    a = Author.new(first_name: "Alan", last_name: "Turing")
    expect(a.name).to eq("Alan Turing")
  end
 
  it "should only be valid when there is a last name" do
    @author = Author.new(first_name: "Alan")
    expect(@author).to_not be_valid
  end
end
