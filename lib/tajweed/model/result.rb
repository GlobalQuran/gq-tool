module GQTool::Tajweed::Model
  # Result class
  class Result
    def initialize(result_type, start, ending)
      @start       = start
      @ending      = ending
      @old_ending  = ending
      @result_type = result_type
    end

    def set_maximum_ending_position(new_end)
      @old_ending = @ending
      @ending     = new_end
    end

    def get_minimum_starting_position
      @start
    end

    def get_maximum_ending_position
      @ending
    end
  end
end
