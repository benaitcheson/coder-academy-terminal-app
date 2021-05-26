# List ruby gem requirements

require 'rubygems'
require 'bundler'
require 'tty-prompt' # haven't used yet
require 'artii'
require 'httparty' # haven't used yet
require 'highline/import' # haven't used yet
require 'tty-progressbar'

require_relative 'recipes.rb'
require_relative 'pantry.rb'


# Initiate bundler & clear users terminal to start

Bundler.require
system ("clear")


# Create a class for intro and user messages
# Will ask for user information

class Intro

    # Welcome message method

    def welcome_message
        a = Artii::Base.new
        puts a.asciify("RubyRecipe".center(150))
        puts "\n" * 5

        @user = ask('What is your name? This will be saved to access your pantry in the future.')

        system ("clear")
        puts a.asciify("RubyRecipe")
        puts "\n" * 5
    end

    welcome_message

    # check if returning user or new user
    # check user DOB

    # Returning user
    if user == "Ben" # make this part query a database of users
        puts "Welcome back #{@user}! Would you like to go to your pantry or view recipes?"
        returning_user_response = gets.chomp.downcase

        if returning_user_response == "pantry"
            puts "Awesome, you've chosen the Pantry! Let's go"

        elsif returning_user_response == "recipes" || "recipe"
            puts "Awesome, you've chosen Recipes! Let's go!"

        else
            puts "Sorry, I don't recognise that option."
    end # problem here

    # New user welcome
    else
        puts "Welcome #{@user.capitalize}!\n\n"
        puts "Here's a bit of information about this application.\n\n"
        puts "This application allows you to build an electronic version of your pantry\n"
        puts "When you make a pantry we can align recipes so you can save time and money by not going to the grocery store.\n"
        puts "So let's start by building your pantry!\n\n\n\n"

        # sends the user to the pantry
    end



    # Progress bar for generating recipe list
    bar = TTY::ProgressBar.new("[:bar]".center(150), total: 20, bar_format: :blade)
    20.times do
        sleep(0.1)
        bar.advance
    end

    system ("clear")
    puts a.asciify("RubyRecipe")
    puts "\n" * 5

end




# Make an exit button
# Make an are you sure exit




# TODO: Give user suggestions for pantry recipes
# TODO: Say welcome back to the user
# TODO: User can save a recipe
# TODO: User can modify a recipe
# TODO: 
