require 'pry'

class Board

	attr_accessor :L1, :L2, :L3, :L4, :L5, :L6, :L7, :a_one, :a_two, :a_three, :b_one, :b_two, :b_three, :c_one, :c_two, :c_three

	#TO DO :
    #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
    #Ces instances sont rangées dans un array/hash qui est l'attr_accessor de la classe
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


	def play_turn
		#demander au bon joueur ce qu'il souhaite faire
		his_turn = Game.current_player

		#2) change la BoardCase jouée en fonction de la valeur du joueur (X ou O)
	  end
	
	  def victory?
		#TO DO : une méthode qui vérifie le plateau et indique s'il y a un vainqueur ou match nul
	  end
	

end

binding.pry
