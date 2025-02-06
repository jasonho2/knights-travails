require './lib/knights_travails.rb'

RSpec.describe "eligible_moves" do
  it "returns all valid knight moves from a given position" do
    expect(eligible_moves([3, 3])).to match_array([[4, 5], [2, 5], [4, 1], [2, 1], [5, 4], [1, 4], [5, 2], [1, 2]])
    expect(eligible_moves([0, 0])).to match_array([[1, 2], [2, 1]])
    expect(eligible_moves([7, 7])).to match_array([[5, 6], [6, 5]])
  end
end

RSpec.describe 'knight_moves' do
  it "returns the number of moves the knight takes from start to end in the shortest number of possible moves" do
    expect(knight_moves([3,3],[4,3])).to eql(3)
  end
end