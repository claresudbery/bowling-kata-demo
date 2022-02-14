require_relative '../bowling'

describe Bowling do
    it "at start of game (no bowling balls rolled), score is zero" do
        # Arrange
        bowling = described_class.new

        # Act
        result = bowling.get_score("")

        # Assert
        expect(result).to eq(0)
    end
end