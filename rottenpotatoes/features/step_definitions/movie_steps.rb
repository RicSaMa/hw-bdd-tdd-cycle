Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
    Movie.create!(movie)
  end
end

Then /the director of "(.*)" should be "(.*)"/ do |e1, e2|
  expect(Movie.find_by_title(e1).director).to eq(e2)
end
