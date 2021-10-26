# Ruby/Selenium Heroku template

A basic template for a serverless Ruby function on Heroku. This can be combined with the free scheduler add on in order to run a Selenium script regularly.


## Required buildpacks

**Selenium:** heroku/chromedriver

**Chrome:** heroku/google-chrome

**Ruby:** heroku/ruby

  
## Installation notes

Suggested buildpack order is above - chromedriver first and ruby last. At the time of writing, this did not require an ENV variable to set the chrome binary location, but that may be necessary if Heroku makes changes.

A Gemfile and Gemfile.lock is required for the build to succeed, otherwise builds will fail with an error stating that the app is incompatible.


