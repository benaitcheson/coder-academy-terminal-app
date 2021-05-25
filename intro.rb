# List ruby gem requirements

require 'rubygems'
require 'bundler'
require 'tty-prompt'
require 'artii'
require 'httparty'
require 'highline/import'

# Use a progress bar for getting recipes


# Initiate bundler

Bundler.require


# Clear users current terminal screen

system ("clear")


# Define variables for gems

a = Artii::Base.new


# Welcome messages

puts a.asciify("RubyRecipe")
puts "\n" * 5

def confirmation_hearings
    answers = {}
    answers[:name] = ask('What is your name? ')
    answers[:user_pantry] = ask('What have you got in the pantry?')
    puts "Okay, let's see what recipes we can find for you"
    return answers
end

confirmation_hearings

# TODO: Give user suggestions for pantry recipes
# TODO: Say welcome back to the user
# TODO: User can save a recipe
# TODO: User can modify a recipe
# TODO: 
