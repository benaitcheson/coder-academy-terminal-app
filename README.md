# Coder Academy - Ruby Terminal App

<img src="https://img.shields.io/tokei/lines/github/benaitcheson/terminal-app?style=flat-square">
<img src="https://img.shields.io/github/languages/top/benaitcheson/terminal-app?style=flat-square">
<img src="https://img.shields.io/github/repo-size/benaitcheson/terminal-app?style=flat-square">

## Assignment 3 - Term 1 (T1A3)

By Ben Aitcheson - [My Github][1]

Link to Repository - [Terminal App Repo][2]

- [x] description
- [x] statement of purpose
- [ ] functionality
- [x] instructions
- [x] installation
- [ ] design and planning
- [x] flow chart
- [ ] testing
- [ ] code structure
- [x] gems


## Description
This application was designed and built to solve my issue of having items in the pantry/fridge but not knowing what meals I can make with the items at hand. The user can input their items and the RubyRecipe application will search the database for the most relevant recipes for those items.

## Statement of Purpose
This application will receive food items the user has at their disposal and return some recipes that the user could make with the food they have, or return recipes the user would only need to get a small amount of additional items. The user can then rate recipes and have the recipe downloaded or emailed to them.

I have spent a long time searching through recipes to find some that match the ingredients in my pantry to save myself time and money going to the grocery store and buying more items to make a meal and neglecting the food in my pantry. As well as spending more money on things I don't need. So, I am developing this application to save myself time and money. With the added benefit of learning to make meals from the stable ingredients in my pantry.

The target audience is people like me who have lots of stable ingredients in their pantry or fridge and don't want to go the the grocery store to get more items. They like cooking and could be any age or demographic.

With a small understanding of downloading a github repo and running a file in terminal anyone can use this app. Just follow the installation instructions in the next section.

## Installation

If you have ruby installed on your computer there are a few steps to get RubyRecipe up and running.

1. Download the git repo to your computer.
2. Open the terminal or something to run the script.
3. Navigate to the downloaded git repo.
4. Type this code into the terminal.

```ruby
bundle install 
```

5. Wait for the terminal to finish the install.
6. Type this code into the terminal to start the application.

```ruby
ruby intro.rb
```

7. Enjoy!

## Functionality
Features include:

1. Users can create a pantry.
2. Users can search for recipes.
3. Users can rate and review recipes.
4. Users can generate a recipe list from the items in their pantry.


Include how those use these...
error handling
loops
variables

## Instructions/Interaction

The user will be prompted for a name and their date of birth. This will be their login.

Once logged for the first time the user will be prompted to build their pantry. Listing out all the items in their pantry and fridge. After completing this step the user can search recipes or have a list of recipes generated for them from the items in their pantry.

Once a list of recipes has been generated the user can view a single recipe and save the recipe or choose to cook the recipe and make amendments or leave the recipe as it is.

## Design & Planning

The design for this application was intended for the user to be able to step through a series of menu's allowing them to build a pantry and then amend their saved recipes.

## Control Flow

In this step Control Flow of the Terminal Application will be explained in detail.



<img src="../terminal-app/flowchart.png">




## Testing

Testing of the ruby code was done with a Gem called rSpec. 

## Gems

Here is a list of the gems used for this application:

- TTY Prompt
- TTY Progressbar
- JSON
- Artii

All gems sourced from [Rubygems.org][3]

## Authors

Ben Aitcheson - [My Github account][1]

## Acknowledgments

Thanks to the team at Coder Academy for their support.

Style Guide from Airbnb : https://github.com/airbnb/ruby

API generated through RapidAPI: https://rapidapi.com/marketplace

[1]: https://github.com/benaitcheson
[2]: https://github.com/benaitcheson/terminal-app/
[3]: https://rubygems.org/