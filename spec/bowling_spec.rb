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

    it "after one roll, score is equal to number of pins" do
        # Arrange
        bowling = described_class.new
        expected_score = 3

        # Act
        result = bowling.get_score("#{expected_score}")

        # Assert
        expect(result).to eq(expected_score)
    end    

    it "after one roll, score is equal to number of pins" do
        # Arrange
        bowling = described_class.new
        expected_score = 6

        # Act
        result = bowling.get_score("#{expected_score}")

        # Assert
        expect(result).to eq(expected_score)
    end
end