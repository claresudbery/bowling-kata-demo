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

    expected_scores_for_rolls = {
        "2" => 2,
        "5" => 5
    }

    expected_scores_for_rolls.each do |rolls, expected_score|
        it "after one roll, score is equal to number of pins" do
            # Arrange
            bowling = described_class.new
    
            # Act
            result = bowling.get_score(rolls)
    
            # Assert
            expect(result).to eq(expected_score)
        end  
    end
end