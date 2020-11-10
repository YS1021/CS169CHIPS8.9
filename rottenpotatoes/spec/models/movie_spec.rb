require 'rails_helper'

RSpec.describe Movie, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it "has one record after creating" do
    Movie.create(title: 'MovieA', rating: 'G', director: 'DirectorA', release_date: '09-Oct-1999')
    expect(Movie.count).to eq(1)
  end
  
end
