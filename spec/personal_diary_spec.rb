require 'personal_diary'

RSpec.describe 'make_snippet method' do
  it "should have a method called make_snippet" do
    expect(make_snippet("string")).to eq "string"
  end

  it "should take a string as an argument and print that string" do
    expect(make_snippet("string")).to eq "string"
    expect(make_snippet("another string")).to eq "another string"
    expect(make_snippet("cat and dog")).to eq "cat and dog"
  end

  it "should append the string with elipses (...) if the input is longer than five words" do
    expect(make_snippet("Today I went to the shops")).to eq "Today I went to the..."
    expect(make_snippet("one two three four five six")).to eq "one two three four five..."
    expect(make_snippet("Now we have added an elipses")).to eq "Now we have added an..."
  end
end

RSpec.describe "count_words method" do

  it "returns the number of words of an empty string as 0" do
    expect(count_words("")).to eq 0
  end

  it "returns 1 when given one word" do
    expect(count_words("Robbie")).to eq 1
  end

  it "returns 5 when given five words" do
    expect(count_words("one two three four five")).to eq 5
  end

  it "returns the number of words for a variety of strings" do
    expect(count_words("six")).to eq 1
    expect(count_words("seven eight")).to eq 2
    expect(count_words("nine ten eleven twelve thirteen fourteen")).to eq 6
  end

end