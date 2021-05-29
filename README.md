# Coder Academy - Ruby Terminal App

<img src="https://img.shields.io/tokei/lines/github/benaitcheson/terminal-app?style=flat-square">
<img src="https://img.shields.io/github/languages/top/benaitcheson/terminal-app?style=flat-square">
<img src="https://img.shields.io/github/repo-size/benaitcheson/terminal-app?style=flat-square">

## Assignment 3 - Term 1 (T1A3)

By Ben Aitcheson - [My Github][1]

Link to Repository - [Terminal App Repo][2]

---

## Description
This application was designed and built to solve my issue of having items in the pantry/fridge but not knowing what meals I can make with the items at hand. The user can input their items and the RubyRecipe application will search the database for the most relevant recipes for those items.

---
## Statement of Purpose
This application will receive food items the user has at their disposal and return some recipes that the user could make with the food they have, or return recipes the user would only need to get a small amount of additional items. The user can then rate recipes and have the recipe downloaded or emailed to them.

I have spent a long time searching through recipes to find some that match the ingredients in my pantry to save myself time and money going to the grocery store and buying more items to make a meal and neglecting the food in my pantry. As well as spending more money on things I don't need. So, I am developing this application to save myself time and money. With the added benefit of learning to make meals from the stable ingredients in my pantry.

The target audience is people like me who have lots of stable ingredients in their pantry or fridge and don't want to go the the grocery store to get more items. They like cooking and could be any age or demographic.

With a small understanding of downloading a github repo and running a file in terminal anyone can use this app. Just follow the installation instructions in the next section.

---
## Installation

If you have ruby installed on your computer there are a few steps to get RubyRecipe up and running.

1. Download the git repo to your computer.
2. Open the terminal or something to run the script, could be bash or zsh.
3. Navigate to the downloaded git repo.
4. Type this code into the terminal.

```ruby
./run_app.sh
```

5. Wait for the terminal, this should launch the intro.rb file and fire up bundler to finish the install.

6. Enjoy!

Should the script file fail you can navigate to the location of the ruby files with the terminal and execute this code to start the app manually.

```ruby
ruby intro.rb
```

---
## Functionality
This application has four main features which I'll define below.

### Users can Create a Pantry
Users can add and remove items to an electronic list to mimic their pantry. Using prompting the user can navigate through the menu's and populate their pantry. The user will be given the option once greeted to select the Pantry list or the Recipe list. Once finished with the list the user is given the option to go back to the main menu where they will be given the Pantry or Recipe list option.

The user will interact with this feature once selecting Pantry on the prompt menu. The following menu will have a list of sub features (see below image), these features help the user manipulate their Pantry items. Following this errors and error handling will be done with rescue commands to ensure the code runs smoothly and code to ensure the values the user is putting in are the required values, e.g...

```ruby
# check dob

puts "Now what's your date of birth (DDMMYYYY)?"

    date_of_birth = gets.strip.upcase

```

Here's a list of the things I wanted a user to be able to do in the Pantry feature:
<img src="../Feature1.png" alt="Should be an image here.">

### Users can Search for Recipes
The application can let each user search for recipes they want to cook and save each recipe to make later. The user can search their saved recipes or they can search recipes on the internet either by name or by ingredients. There is also a sub feature where each user can flag items they would not want to see come up at all. This will eliminate all instances of the item.

Just like the Pantry feature the user will be guided into this feature from a prompt menu and once they user has finished with the search Recipe feature they will be given a prompt menu asking if they would like to navigate to the Pantry or back to Recipes. The same error handling as the Recipe feature will catch errors for the Recipe feature too. Code to ensure the users input is correct and rescue commands to catch run errors.

Here's a list of the things I wanted a user to be able to do in the Search Recipe feature:
<img src="../Feature2.png" alt="Should be an image here.">

### Users can Rate and Review Recipes
After a user saves and makes a recipe they can give each saved recipe a rating and a review. The user can also make modifications to saved recipes. This will encourage the user to tailor recipes to be their own and hopefully encourage them to continue to use the app. This feature can be found under the Recipe menu as a sub menu. Once a list of saved recipes is returned to the user they can follow the prompt menu to make changes, save or unsave, leave a rating and leave a review. Ratings can only have numbers while reviews can be nil or have text only with a limit of 500 characters.

Here's a list of the things I wanted a user to be able to do in the Rate and Review feature:
<img src="../Feature3.png" alt="Should be an image here.">

### Users can Generate a Recipe List from the Items in Their Pantry
Once the user generates their pantry they have the option of populating a list of recipes based off their pantry items. This feature can save the user from buying more items or having to leave the house and will generate recipe idea's similar to the users pantry. The user can access this feature through the Recipe menu, it will appear as a sub menu and the user will be shown a list of recipes automatically. Once a recipe is picked the user will be lead through the usual recipe workflow.

Error handling will be done in a way to ensure the user has pantry items to generate a recipe list from. otherwise there's no more inputs from the user so just general error catches like rescues will be implemented to prevent other errors from happening, mostly around the API encountering issues.

---
## Instructions/Interaction
The user will be prompted for a name and their date of birth. This will be their login.

Once logged for the first time the user will be prompted to build their pantry. Listing out all the items in their pantry and fridge. After completing this step the user can search recipes or have a list of recipes generated for them from the items in their pantry.

Once a list of recipes has been generated the user can view a single recipe and save the recipe or choose to cook the recipe and make amendments or leave the recipe as it is.

---
## Design, Planning and Implementation
The design for this application was intended for the user to be able to step through a series of menu's allowing them to build a pantry and then save recipes and make their own amendments to those saved recipes.

This entire application was programmed in Ruby for the terminal, besides a script file for launching the application after download. Features of Ruby used includes; cases, methods, loops, variables, error handling and test driven development. Following an unwritten rule in programming I stuck to a technique called DRY coding. The acronym stands for Do not Repeat Yourself.

 - Variables were used to hold data, whether they be a persons name, their date of birth or some response required from the user at a particular point in the control flow.

 - Loops were used to step through the Pantry and Recipe prompt menus with TTY-Prompt paired with a case when method.

 - Methods help make code blocks for actions and are then called when they are required. For example there is a method for both the Pantry and Recipe prompt menus. So when the user asks to be linked back to a menu the method is called and the method initiates.

 - Cases help keep features and methods together. This is essential for large projects with lots of features.

 - Error handling is used to catch any errors the code can throw or catch something the user might enter for a gets request.

 - Test Driven Development (TDD) was used to guide the initial code. The application was written around the TDD. TDD was written with the help of a gem called rSpec (links to gem documentation listed below under 'Gems').

To keep track of the progress throughout the coding process a project management software system called [Trello][4] was used. You can see some screenshots of the projects progression below.

Where it started:
<img src="../Trello1.png" alt="Should be an image here.">

Building out my feature ideas:
<img src="../Trello2.png" alt="Should be an image here.">

Progress shot:
<img src="../Trello3.png" alt="Should be an image here.">

Nearly there:
<img src="../Trello4.png" alt="Should be an image here.">

Last one:
<img src="" alt="Should be an image here.">

Along with Trello a time management technique called Pomodoro timing was used to help manage my time. Each feature was listed in the Pomodoro clock and given 25min uninterrupted time to complete. Rough amounts of Pomodoros were initially assigned to each task but as they took longer then expected there was no cap on each but it was helpful to see a holistic view of time spent on each feature. The Pomodoro clock app I used was [Pomo Focus][5]

<img src="../pomo.png" alt="Should see a list of focus times. I usually forget to turn this on." width=400px>

---
## Control Flow
In this step Control Flow of the Terminal Application will be explained in detail and a flowchart will be referred to.

1. Once the application is launched, the user will be prompted with a request for their name and date of birth. This will be used to keep track of each user. The application will then loop through existing users to see if the name and date of birth match. If a returning user they will be greeted with a welcome back message.

2. For first time users the application will request that they populate the Pantry first. Each item the user inputs will populate and array of hashes. For returning users they will be greeted with a menu asking if they'd like to view their Pantry and make changes or would they like to go straight to the Recipe menu. These menus are used with the assistance of the Ruby gem called, TTY-Prompt.

3. This is where the application branches in two directions. The user can choose to see all the Pantry features and sub features or the user can see the Recipes and the sub recipe features. A method has been created to step the user through each menu. Once in the menu each sub menu is controlled with a case.

4. In the Pantry feature the user can add items, remove items and view the entire list of items in the electronic pantry. In the Recipe feature users can search recipes, view saved recipes, generate a list of recipes from the pantry and remove recipes from the list. The search function will use an API generated through [Rapid API][6] to search the internet. The data returned will be converted to JSON format and a loop will be used to check the name of each recipe to the name searched.

5. Once the user is done with their queries they can exit the app with the quit function from the prompt menu.

Here's a flowchart of all the steps discussed above:

<img src="../terminal-app/flowchart.png">

---
## Testing
Testing of the ruby code was done with a Gem called rSpec. 

Testing intro_spec.rb

---
## Gems
Here is a list of the gems used for this application and a quick description on how they helped:

- [TTY Prompt][7]

This Gem helped to make menu items display in one action in the terminal.

- [TTY Progressbar][8]

This Gem was purely to display a loading bar to make it seems the terminal was loading or taking longer then anticipated.

- [TTY Table][9]

This Gem was used the display recipe ingredients in a easy to view table with minimal code.

- [JSON (haven't used this yet)][10]

This Gem helps display data from an API in a legible format.

- [Artii][11]

The Artii Gem was used to make a display header for the RubyRecipe logo.

All gems sourced from [Rubygems.org][3]

---
## Authors
Ben Aitcheson - [My Github account][1]

---
## Acknowledgments
Thanks to the team at Coder Academy for their support.

Style Guide from Airbnb : https://github.com/airbnb/ruby

API generated through RapidAPI: https://rapidapi.com/marketplace

[1]: https://github.com/benaitcheson
[2]: https://github.com/benaitcheson/terminal-app/
[3]: https://rubygems.org/
[4]: https://trello.com/
[5]: https://pomofocus.io/
[6]: https://rapidapi.com/marketplace
[7]: https://rubygems.org/gems/tty-prompt
[8]: https://rubygems.org/gems/tty-progressbar
[9]: https://rubygems.org/gems/tty-table
[10]: https://rubygems.org/gems/json
[11]: https://rubygems.org/gems/artii