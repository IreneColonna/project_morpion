require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require_relative 'lib/board_case'
require_relative 'lib/board'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/show'


class Application

    def perform
    # TO DO : méthode qui initialise le jeu puis contient des boucles while pour faire tourner le jeu tant que la partie n'est pas terminée.
        game = Game.new
        turn_count = 0
        while turn_count < 9 && game.status = "on going"
            game.turn
            turn_count += 1
        end
        if turn_count == 9
            game.status = "la partie est terminée, match nul"
        end
        game.game_end
    end
end

Application.new.perform


