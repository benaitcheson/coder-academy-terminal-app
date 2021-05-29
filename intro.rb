# List ruby gem requirements

require 'rubygems'
require 'bundler'
require 'tty-prompt'
require 'artii'
require 'tty-progressbar'

require_relative 'recipe.rb'
require_relative 'pantry.rb'

# Initiate bundler & clear users terminal to start

Bundler.require
system 'clear'

# Method for application banner

def ruby_recipe_logo
    begin
        a = Artii::Base.new
        puts a.asciify("RubyRecipe")
        puts "\n" * 5

    rescue
        puts "Oops. There should be a logo here."
    end
end


# Welcome message method

def welcome_message
    puts "Welcome to RubyRecipe!\n\n"

    puts "To start off let's go through a quick description.\n\n"

    puts "This application allows you to build an electronic version of your pantry\n"
    puts "you can also search for recipes from the internet"
    puts "\n"

    puts "So let's get started!\n\n\n\n"
end


# Check if returning use method

def user_check

    prompt = TTY::Prompt.new

    # system 'clear'
    welcome_message
    
    puts "Let's get your name and date of birth."
    puts "What's your first name?"

    user_name = gets.strip.downcase

    puts "Now what's your date of birth (DDMMYYYY)?"

    date_of_birth = gets.strip.upcase

    puts "Thanks, just to confirm. You name is #{user_name.capitalize} and your date of birth is #{date_of_birth}? (Y/N)"

    # loop to check user details are correct

    check_user = gets.strip.upcase


    puts "Awesome!"
end


def start_menu    

    pantry_list = Pantry.new(user_name)

    loop do
        case pantry_menu(prompt)
        when 1
            pantry_list.view
        when 2
            pantry_list.add
        when 3
            pantry_list.remove
        when 4
            start_menu(user_name) # this doesn't work'
        when 5
            exit   
        end    
    end

    recipe_list = Recipe.new(user_name)

    loop do
        case recipe_menu(prompt)
        when 1
            # search method name
        when 2
            # seatch method ingredients
        when 3
            # generate recipe list from pantry method
        when 4
            recipe_list.view  
        when 5
            recipe_list.remove
        when 6
            # recipe list modify method
        when 7
            start_menu(user_name) # this doesn't work
        when 8
            exit
        end    
    end
end

# Pantry menu method

def pantry_menu(pantry_prompt)
    pantry_choices = [
    {name: "View your pantry items", value: 1},
    {name: "Add an item/s to your pantry", value: 2},
    {name: "Remove items from the pantry", value: 3},
    {name: "Back to main menu", value: 4},
    {name: "Quit", value: 5}
    ]

    pantry_prompt.select("Please choose an option:", pantry_choices)
end


# Recipe menu method

def recipe_menu(recipe_prompt)
    recipe_choices = [
    {name: "Search recipes via name", value: 1},
    {name: "Search recipes via ingredients", value: 2},
    {name: "Generate recipe search from items in pantry", value: 3},
    {name: "View list of saved recipes", value: 4},
    {name: "Remove a saved recipe", value: 5},
    {name: "Modify a saved recipe", value: 6},
    {name: "Back to main menu", value: 7},
    {name: "Quit", value: 8}
    ]

    recipe_prompt.select("Please choose an option:", recipe_choices)
end

# Progress bar for generating recipe list

def progress_bar
    bar = TTY::ProgressBar.new("[:bar]".center(150), total: 20, bar_format: :blade)
    20.times do
        sleep(0.1)
        bar.advance
    end
end


ruby_recipe_logo
user_check
start_menu
progress_bar