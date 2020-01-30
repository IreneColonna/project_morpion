require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)

require 'app/board_case'
require 'app/board'
require 'game'
require 'player'
require 'views/show'


