require 'rails_helper'

RSpec.describe MoviesHelper, :type => :helper do
  # app/helpers/movies_heper.rb#oddness
  describe "#oddness" do
    it "checks if a number is odd" do
      expect(helper.oddness(3)).to eq("odd")
      expect(helper.oddness(4)).to eq("even")
    end
  end
end
