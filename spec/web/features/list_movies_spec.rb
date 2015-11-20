require 'features_helper'

describe 'List Movies' do
  it "displays each movies" do
    visit '/movies'

    within '#movies' do
      assert page.has_css?('.movie', count: 3), "Expected to find 3 movies"
    end
  end
end