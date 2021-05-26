# List ruby gem requirements

require 'rubygems'
require 'bundler'
require 'tty-prompt' # haven't used yet
require 'artii'
require 'httparty' # haven't used yet
require 'highline/import' # haven't used yet
require 'tty-progressbar'

# require_relative 'recipes.rb'
# require_relative 'pantry.rb'

# Initiate bundler & clear users terminal to start

Bundler.require
system 'clear'
prompt = TTY::Prompt.new

def welcome_message
    a = Artii::Base.new
    puts a.asciify("RubyRecipe".center(150))
    puts "\n" * 5
    puts "Welcome!\n\n
        Here's a bit of information about this application.\n\n
        This application allows you to build an electronic version of your pantry\n
        When you make a pantry we can align recipes so you can save time and money
        by not going to the grocery store.\n
        So let's start by building your pantry!\n\n\n\n"
end

def pantry_menu(pantry_prompt)
    pantry_choices = [
    {name: "View your pantry items", value: 1},
    {name: "Add an item/s to your pantry", value: 2},
    {name: "Remove items from the pantry", value: 3},
    {name: "Quit", value: 4}
    ]

    pantry_prompt.select("Please choose an option:", pantry_choices)
end

def recipe_menu(recipe_prompt)
    recipe_choices = [
    {name: "Search recipes via name", value: 1},
    {name: "Search recipes via ingredients", value: 2},
    {name: "Generate recipe search from items in pantry", value: 3},
    {name: "Remove a saved recipe", value: 4}
    {name: "Modify a saved recipe", value: 5}
    {name: "Quit", value: 6}
    ]

    recipe_prompt.select("Please choose an option:", recipe_choices)
end

    # check if returning user or new user
    # check user DOB

    # Returning user
    if user == "Ben" # make this part query a database of users
        puts "Welcome back #{user}! Would you like to go to your pantry or view recipes?"
        returning_user_response = gets.chomp.downcase

        if returning_user_response == "pantry"
            puts "Awesome, you've chosen the Pantry! Let's go"

        elsif returning_user_response == "recipes" || "recipe"
            puts "Awesome, you've chosen Recipes! Let's go!"

        else
            puts "Sorry, I don't recognise that option."
    end # problem here



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
