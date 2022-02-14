require_relative '../bowling'

describe Bowling do
    before(:each) do
        @bowling = described_class.new
    end

    it "will return zero score at start of game (no bowling balls rolled)" do
        # Act
        result = @bowling.get_score("")

        # Assert
        expect(result).to eq(0)
    end

    expected_scores_for_rolls = {
        "2" => 2,
        "5" => 5
    }

    expected_scores_for_rolls.each do |rolls, expected_score|
        it "will return score equal to number of pins after one roll" do
            # Act
            result = @bowling.get_score(rolls)
    
            # Assert
            expect(result).to eq(expected_score)
        end  
    end
    
    it "will return score equal to total of pins, after two rolls and not all pins knocked down" do
        # Arrange
        first_roll = 2
        second_roll = 5
        expected_score = first_roll + second_roll

        # Act
        result = @bowling.get_score("#{first_roll}#{second_roll}")

        # Assert
        expect(result).to eq(expected_score)
    end
end