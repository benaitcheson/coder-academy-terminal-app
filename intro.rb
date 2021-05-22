require 'rubygems'
require 'bundler'
require "tty-prompt"
require 'artii'

Bundler.require

system ("clear")

a = Artii::Base.new
prompt = TTY::Prompt.new



# Welcome messages

puts a.asciify("RubyRecipe")
puts "\n" * 5

    user_name = prompt.ask("What is your name?", default: ENV["USER"])

    system ("clear")

    puts a.asciify("RubyRecipe")
    puts "\n" * 5
    puts "Hi #{user_name}, welcome to RubyRecipe!"
    puts "\n" * 5


    # Ask for pantry and fridge items

    puts "Now, let's build up your pantry and fridge items so we can generate some recipes.\n"
    prompt.ask("Tell me what ingredients you have? (comma sep list)", value: "Milk", required: true) do |q|
        q.convert -> (input) { input.split(/,\s*/) }
    end

    




# when the user recieves their list of recipes they can choose which one they want to view or choose to have it emailed to them

# prompt.select("Choose your Recipe?") do |menu|
#    menu.enum "."
#  
#    menu.choice "INSERT VALUE HERE", 1
#    menu.choice "INSERT VALUE HERE", 2
#    menu.choice "INSERT VALUE HERE", 3
#end




# Make intro art work

# RubyRecipes


# Tell the user that they need to input their pantry/fridge items to get recipes that relate to their food.

# User inputs information

## nice have: give suggestions to the user
## error handle: message surely you have something in your house to use.

# get information and split the input into different items

# search recipes for the items



## nice have: email the recipe with a user input email

