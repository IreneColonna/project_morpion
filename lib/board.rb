require 'pry'

class Board
	attr_accessor :L1, :L2, :L3, :L4, :L5, :L6, :L7, :a_one, :a_two, :a_three, :b_one, :b_two, :b_three, :c_one, :c_two, :c_three

	# création des 9 instances de cases... ça serait mieux dans un hash
	def initialize 
		@a_one = BoardCase.new("A1")
		@a_two = BoardCase.new("A2") 
		@a_three = BoardCase.new("A3") 
		@b_one = BoardCase.new("B1") 
		@b_two = BoardCase.new("B3") 
		@b_three = BoardCase.new("B3") 
		@c_one = BoardCase.new("C1")
		@c_two = BoardCase.new("C2")
		@c_three = BoardCase.new("C3") 

		@L1 = "  ---1-----2-----3---"
		@L2 = "A |  " + "#{@a_one.state}" + "  |  " + "#{@a_two.state}" + "  |  " + "#{@a_three.state}" + "  |"
		@L3 = "  -------------------"
		@L4 = "B |  " + "#{@b_one.state}" + "  |  " + "#{@b_two.state}" + "  |  " + "#{@b_three.state}" + "  |"
		@L5 = "  -------------------"
		@L6 = "C |  " + "#{@b_one.state}" + "  |  " + "#{@b_two.state}" + "  |  " + "#{@b_three.state}" + "  |"
		@L7 = "  -------------------"
	end


	def play_turn(case_to_fill,current_player)
		
		while case_to_fill != ( @a_one.position || @a_two.position || @a_three.position || @b_one.position || @b_two.position || @b_three.position || @c_one.position || @c_two.position || @c_three.position)
            puts "Entre un numéro de case valide" 
            print "> "
            case_to_fill = gets.chomp
		end
		
		case_filled = 0 
        while case_filled < 1
            if case_to_fill == @a_one.position && @a_one.state == " "
                @a_one.state = value
                case_filled += 1 
            elsif case_to_fill == @a_two.position && @a_two.state == " "
                @a_two.state = value
                case_filled += 1
            elsif case_to_fill == @a_three.position && @a_three.state == " "
                @a_three.state = value
                case_filled += 1
            elsif case_to_fill == @b_one.position && @b_one.state == " "
                @b_one.state = value
                case_filled += 1            
            elsif case_to_fill == @b_two.position && @b_two.state == " "
                @b_two.state = value
                case_filled += 1
            elsif case_to_fill == @b_three.position && @b_three.state == " "
                @b_three.state = value
                 case_filled += 1
            elsif case_to_fill == @c_one.position && @c_one.state == " "
                @c_one.state = value
                case_filled += 1
            elsif case_to_fill == @c_two.position && @c_two.state == " "
                @c_two.state = value
                case_filled += 1
            elsif case_to_fill == @c_three.position && @c_three.state == " "
                @c_three.state = value
                case_filled += 1
            else 
                puts "Impossible : cette case est déjà occupée, entre un autre numéro :"
                print "> "
                case_to_fill = gets.chomp
            end
        end
		#2) change la ase jouée en fonction de la valeur du joueur (X ou O)
	  end
	
	def victory?
		#TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
		if @a_one.state == @b_one.state && @a_one.state == @c_one.state
            @status = "la partie est terminée, #{current_player.name} a gagné"
        elsif @a_one.state == @a_two.state && @a_one.state == @a_three.state
            @status = "la partie est terminée, #{current_player.name} a gagné"
        elsif @a_one.state == @b_two.state && @a_one.state == @c_three.state
            @status = "la partie est terminée, #{current_player.name} a gagné"
        elsif @b_one.state == @b_two.state && @b_one.state == @b_three.state
            @status = "la partie est terminée, #{current_player.name} a gagné"
        elsif @c_one.state == @c_two.state && @c_one.state == @c_three.state
            @status = "la partie est terminée, #{current_player.name} a gagné"
        elsif @a_three.state == @b_three.state && @a_three.state == @c_three.state
            @status = "la partie est terminée, #{current_player.name} a gagné"
        elsif @a_two.state == @b_two.state && @a_two.state == @c_two.state
            @status = "la partie est terminée, #{current_player.name} a gagné"
        elsif @c_one.state == @b_two.state && @c_one.state == @a_three.state
            @status = "la partie est terminée, #{current_player.name} a gagné" 
        end
	end
	

end

