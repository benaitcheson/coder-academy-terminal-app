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

def ruby_recipe_logo
    a = Artii::Base.new
    puts a.asciify("RubyRecipe")
    puts "\n" * 5
end

def welcome_message
    puts "Welcome to RubyRecipe!\n\n"

    puts "To start off let's go through a quick description.\n\n"

    puts "This application allows you to build an electronic version of your pantry\n"
    puts "you can also search for recipes from the internet"
    puts "\n"

    puts "So let's get started!\n\n\n\n"
end

def start_menu


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
    {name: "Remove a saved recipe", value: 4},
    {name: "Modify a saved recipe", value: 5},
    {name: "Quit", value: 6}
    ]

    recipe_prompt.select("Please choose an option:", recipe_choices)
end

def progress_bar
    # Progress bar for generating recipe list
    bar = TTY::ProgressBar.new("[:bar]".center(150), total: 20, bar_format: :blade)
    20.times do
        sleep(0.1)
        bar.advance
    end
end

system 'clear'
welcome_message

name = gets.strip.downcase

pantry_list = Pantry.new(name)

loop do
  case menu(prompt)
  when 1
    pantry_list.view
  when 2
    pantry_list.add
  when 3
    pantry_list.remove
  when 4
    exit   
  end    
end


ruby_recipe_logo
welcome_message
start_menu
progress_bar


# Make an exit button
# Make an are you sure exit




# TODO: Give user suggestions for pantry recipes
# TODO: Say welcome back to the user
# TODO: User can save a recipe
# TODO: User can modify a recipe
# TODO: 
