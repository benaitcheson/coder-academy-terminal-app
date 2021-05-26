# List ruby gem requirements

require 'rubygems'
require 'bundler'
require 'tty-prompt'
require 'artii'
require 'httparty'
require 'highline/import'
require 'tty-progressbar'

# Initiate bundler

Bundler.require


# Clear users current terminal screen

system ("clear")


# Define variables for gems

a = Artii::Base.new


# Welcome messages

puts a.asciify("RubyRecipe")
puts "\n" * 5

def which_user
    user_answers = {}
    user_answers[:name] = ask('What is your name? This will be saved to access your pantry in the future.')
    return user_answers
end





# Insert tty-progress bar





# TODO: Give user suggestions for pantry recipes
# TODO: Say welcome back to the user
# TODO: User can save a recipe
# TODO: User can modify a recipe
# TODO: 
