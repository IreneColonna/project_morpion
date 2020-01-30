require 'pry'

class BoardCase 

    attr_accessor :state, :position

    #création d'une case avec sa position et son état"
    def initialize(position)
        @position = position
        @state = " "
    end

end

binding.pry