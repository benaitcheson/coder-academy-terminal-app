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

user = ask('What is your name? This will be saved to access your pantry in the future.')

system ("clear")
puts a.asciify("RubyRecipe")
puts "\n" * 5

# check if returning user or new user



# Returning user


# New user

puts "Hi #{user}, let's get started!"
puts ""



# Progress bar for generating recipe list
bar = TTY::ProgressBar.new("[:bar]".center(150), total: 20, bar_format: :blade)
30.times do
    sleep(0.1)
    bar.advance  # by default increases by 1
end




# Insert tty-progress bar





# TODO: Give user suggestions for pantry recipes
# TODO: Say welcome back to the user
# TODO: User can save a recipe
# TODO: User can modify a recipe
# TODO: 
