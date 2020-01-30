require 'pry'

class 
	attr_accessor :L1, :L2, :L3, :L4, :L5, :L6, :L7, :a_one, :a_two, :a_three, :b_one, :b_two, :b_three, :c_one, :c_two, :c_three

	# création des 9 instances de cases... ça serait mieux dans un hash
	def initialize 
		@a_one = ase.new("A1")
		@a_two = ase.new("A2") 
		@a_three = ase.new("A3") 
		@b_one = ase.new("B1") 
		@b_two = ase.new("B3") 
		@b_three = ase.new("B3") 
		@c_one = ase.new("C1")
		@c_two = ase.new("C2")
		@c_three = ase.new("C3") 

		@L1 = "  ---1-----2-----3---"
		@L2 = "A |  " + "#{@a_one.state}" + "  |  " + "#{@a_two.state}" + "  |  " + "#{@a_three.state}" + "  |"
		@L3 = "  -------------------"
		@L4 = "B |  " + "#{@b_one.state}" + "  |  " + "#{@b_two.state}" + "  |  " + "#{@b_three.state}" + "  |"
		@L5 = "  -------------------"
		@L6 = "C |  " + "#{@b_one.state}" + "  |  " + "#{@b_two.state}" + "  |  " + "#{@b_three.state}" + "  |"
		@L7 = "  -------------------"
	end


	def play_turn(case_to_fill, value)
		
		while case_to_fill != ( @a_one.position || @a_two.position || @a_three.position || @b_one.position || @b_two.position || @b_three.position || @c_one.position || @c_two.position || @c_three.position)
            puts "Entre un numéro de case valide" 
            print "> "
            case_to_fill = gets.chomp
		end
		
		case_filled = 0 
        while case_filled < 1
            if case_to_fill == "A1" && @a_one.state == " "
                @a_one.state = value
                case_filled += 1 
            elsif case_to_fill == "A2" && @a_two.state == " "
                @a_two.state = value
                case_filled += 1
            elsif case_to_fill == "A3" && @a_three.state == " "
                @a_three.state = value
                case_filled += 1
            elsif case_to_fill == "B1" && @b_one.state == " "
                @b_one.state = value
                case_filled += 1            
            elsif case_to_fill == "B2" && @b_two.state == " "
                @b_two.state = value
                case_filled += 1
            elsif case_to_fill == "B3" && @b_three.state == " "
                @b_three.state = value
                 case_filled += 1
            elsif case_to_fill == "C1" && @c_one.state == " "
                @c_one.state = value
                case_filled += 1
            elsif case_to_fill == "C2" && @c_two.state == " "
                @c_two.state = value
                case_filled += 1
            elsif case_to_fill == "C3" && @c_three.state == " "
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
	  end
	

end

