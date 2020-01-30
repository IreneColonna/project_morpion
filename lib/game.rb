class Game

    attr_accessor :board, :current_player, :status, :players
    #lancer le jeu

    def initialize
        #créer 2 joueurs
        @players =[]

        #joueur 1
        puts "Quel est le nom du joueur 1 ?"
        print "> "
        name_player1 = gets.chomp
        player1 = Player.new(name_player1.to_s, "x")
        @players << player1
        puts "le joueur #{player1.name} jouera avec les #{player1.value}"
        puts " " * 50

        #joueur 2
        puts "Quel est le nom du joueur 2 ?"
        print "> "
        name_player2 = gets.chomp
        player2 = Player.new(name_player2, "o")
        @players << player2
        puts "le joueur #{player2.name} jouera avec les #{player2.value}"
        puts " " * 50

        #créer un board 
        @board = Board.new

        #mettre le statut sur "jeu en cours"
        @status = "on going"

        #définir le current_player
        @current_player = @players[0]

    end


    def turn
        
            #afficher le plateau 
            Show.new.show_board(@board)

            #demander au joueur ce qu'il joue
            puts "C'est au tour de #{@current_player} !"
            puts " " * 50
            puts "Quelle case veux-tu remplir ?"
            print "> "
            case_to_fill = gets.chomp
            #remplir la case avec le symbole du joueur
            #fill_case(case_to_fill) --> créer cette fonction dans board ? 
            while case_to_fill != ("A1" || "A2" || "A3" || "B1" || "B2" || "B3" || "C1" || "C2" || "C3") 
                puts "Entre un numéro de case valide" 
                print "> "
                case_to_fill = gets.chomp
                well_done = 0 
                while well_done < 1
                    if case_to_fill = "A1" && @board.a_one.state = " "
                        @board.a_one.state = "#{@current_player.value}"
                        well_done += 1 
                    elsif case_to_fill = "A2" && @board.a_two.state = " "
                        @board.a_two.state = "#{@current_player.value}"
                        well_done += 1
                    elsif case_to_fill = "A3" && @board.a_three.state = " "
                        @board.a_three.state = "#{@current_player.value}"
                        well_done += 1
                    elsif case_to_fill = "B1" && @board.b_one.state = " "
                        @board.b_one.state = "#{@current_player.value}"  
                        well_done += 1            
                    elsif case_to_fill = "B2" && @board.b_two.state = " "
                        @board.b_two.state = "#{@current_player.value}"
                        well_done += 1
                    elsif case_to_fill = "B3" && @board.b_three.state = " "
                        @board.b_three.state = "#{@current_player.value}"
                        well_done += 1
                    elsif case_to_fill = "C1" && @board.c_one.state = " "
                        @board.c_one.state = "#{@current_player.value}"
                        well_done += 1
                    elsif case_to_fill = "C2" && @board.c_two.state = " "
                        @board.c_two.state = "#{@current_player.value}"
                        well_done += 1
                    elsif case_to_fill = "C3" && @board.c_three.state = " "
                        @board.c_three.state = "#{@current_player.value}"
                        well_done += 1
                    else 
                        puts "Impossible : cette case est déjà occupée, entre un autre numéro :"
                        print "> "
                        case_to_fill = gets.chomp
                    end
                end
            end

            #vérifier si un joueur a gagné
            if @board.a_one.state == @board.b_one.state && @board.a_one.state == @board.c_one.state
                @status = "la partie est terminée, #{@current_player.name} a gagné"
            elsif @board.a_one.state == @board.a_two.state && @board.a_one.state == @board.a_three.state
                @status = "la partie est terminée, #{@current_player.name} a gagné"
            elsif @board.a_one.state == @board.b_two.state && @board.a_one.state == @board.c_three.state
                @status = "la partie est terminée, #{@current_player.name} a gagné"
            elsif @board.b_one.state == @board.b_two.state && @board.b_one.state == @board.b_three.state
                @status = "la partie est terminée, #{@current_player.name} a gagné"
            elsif @board.c_one.state == @board.c_two.state && @board.c_one.state == @board.c_three.state
                @status = "la partie est terminée, #{@current_player.name} a gagné"
            elsif @board.a_three.state == @board.b_three.state && @board.a_three.state == @board.c_three.state
                @status = "la partie est terminée, #{@current_player.name} a gagné"
            elsif @board.a_two.state == @board.b_two.state && @board.a_two.state == @board.c_two.state
                @status = "la partie est terminée, #{@current_player.name} a gagné"
            elsif @board.c_one.state == @board.b_two.state && @board.c_one.state == @board.a_three.state
                @status = "la partie est terminée, #{@current_player.name} a gagné"
            else    
                
                #passer au joueur suivant si la partie n'est pas finie
                if @current_player == @players[0]
                    @current_player = @players[1]
                elsif @current_player == @players[1]
                    @current_player = @players[0]
                end

            end
    end

    def new_round
        # TO DO : relance une partie en initialisant un nouveau board mais en gardant les mêmes joueurs.
        puts "NEW ROUND !!! Be prepared "
        puts " " * 50
        #créer un board 
        @board = Board.new

        #mettre le statut sur "jeu en cours"
        @status = "on going"

        #définir le current_player
        @current_player = @players[0]

        #relance les tours de jeu
        Game.turn
    end

    


    def game_end
    #vérifie si la partie est terminée et propose de rejouer sans changer les noms des joueurs    
        if @status == "la partie est terminée, match nul" || @status == "la partie est terminée, #{@current_player.name} a gagné"
            puts @status
            puts "Voulez-vous rejouer ? (Y/N)"
            print "> "
            play_again = gets.chomp
            if play_again == "Y"
                self.new_round
            elsif play_again == "N"
                puts " " * 50
                puts "FIN DU GAME - BYE BYE"
            end
        end

    end    

end

