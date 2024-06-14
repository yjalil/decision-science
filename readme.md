# Project Setup
This time we'll do things differently to explore new ways of setting up a project as a python package. We will see this in detail on the last weeks of the batch.

## Step 1 : Creating a virtual environment
We create a new virtual environment called olist with the command :
`pyenv virtualenv olist`
Then we activate it with
`pyenv activate olist`
This will allow us to use package versions specific to our project without modifying our global environment. That would  prevent us from breaking some of our other projects. Each project needs to have its own environment with its specific versions.

As you code whenever you run a pip install, run `pip freeze > requirements.txt`. Make sure you're on the right virtual env.

## Step 2 : Setting up the package and data download
This project has a .env file which holds the link to the aws bucket where the CSV files are stored. The .env is not shared on github (we add it to the .gitignore file). So the link needs to be copied manually in the .env
`DATA_SOURCE = "<link>"`
Then we run the command :
`make install`
This will install olist as a package, and all the required packages in requirements.txt. It will also download the data in olist/data/csv

## Step 3 : Our code
The olist/olist folder countains the bulk of all our classes and methods to explore the datasets. We can choose to work in a Test Driven Development way if we want. The olist/tests folder contains some tests that can be ran with the command `make test`. In TDD we write the tests first then keep coding until they succeed.

## Step 4 : Notebook
You can create your final presentation notebook in the olist/presentation folder. In vscode you can change the type of each cell by right clicking on the bottom right and selecting `Switch Slide Type` then choose whatever type suits your needs.
Once the presentation is done, run this command in the same folder as your .ipynb file:
`jupyter nbconvert <myFileName>.ipynb --to slides `
This will create a .slides.html file which will be your final presentation. You can do this as many times as you want until you're satisfied with your work.
Optional : Once you're done, If you want to add a logo to your presentation add this script tag code to the slides.html file
`<script>
  // JavaScript to add logo to every section in the presentation
  document.addEventListener("DOMContentLoaded", function() {
      var sections = document.querySelectorAll('section');
      sections.forEach(function(section) {
          section.setAttribute('data-background-image', './lewagon.svg');
          section.setAttribute('data-background-size', '300px');
          section.setAttribute('data-background-position', 'top 50px left 50px');
      });
  });
</script>
`
## Step 5 : Prepare your speech and good luck
