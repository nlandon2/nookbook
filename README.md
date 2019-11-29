# Nookbook

This is a CRUD app written in Ruby on Rails and SQLite in which you can customize your own recipe list, add when you want to cook the recipe, and adding the ingredients you need to a shopping list.

## How to Use

First, you will need to sign up and create an account. Once you get in, you can start adding recipes! Once you add a recipe, you can add ingredients that you could add to the shopping list if you do not have enough.

## Install

### Check your Ruby version

```shell
ruby -v
```

The output should be something like `ruby 2.6.3`

If not, install the right ruby version using [rbenv](https://github.com/rbenv/rbenv):

```shell
rbenv install 2.6.3
```

### Install dependencies

Using [Bundler](https://github.com/bundler/bundler)

```shell
bundle install
```

### Initialize the database

```shell
rails db:create db:migrate db:seed
```

## Server

```shell
rails server
```

## Future Features

Some of the futures I want to add include adding a search feature for recipes using the Edamam API for inspiration of what recipes to make, and filter by food type and diet. If I do that, it should be easy to set it to a certain date. It would also be nice to add instructions. I also want to have the app deployed to Heroku soon.
