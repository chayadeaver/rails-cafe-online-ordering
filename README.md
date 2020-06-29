# Chaya's Cafe
A Rails cafe menu application that allows for online ordering and database management.

 ![rails-project](app/assets/images/rails-project.gif)


[Demo](https://www.loom.com/share/12e768c5b8804fbea523763f1f02a00f)|[Deployed App](https://rails-cafe-online-ordering.herokuapp.com/)

## Features

* Sign up/Log in with authenticated password
* Third-party authentication options for signup using GitHub
* Once signed in, users can add items to a cart and submit orders
* Users can make changes in the cart before submitting order
* Users can view all the orders they've created
* Option to sign up as an admin user, who can make changes to menu


## Tech Used

* Ruby [2.6.1]
* Rails [6.02] - MVC Web Framework
* Devise[4.2] - gem for authentication and authorization
* Postgres - database
* Omniauth-github - gem for omniauth with GitHub

## To Install

1. Clone this repo to local machine `git clone <this-repo>`
2. Cd into directory and run `bundle install` to install dependencies
3. Make sure Postgres app is running. To install Postgres app, go [here](https://www.postgresql.org/download/)
4. Run `rails db:create` to create a database
5. Run `rails db:migrate` to create tables in database
6. Run `rails db:seed` to generate seed data
7. Run `rails s` to run server