# Poems of Christophoros Paleshis

This is the Rails application used to present the Cypriot poetry of Christophoros Paleshis to the world.

## Development

### Useful links

We use several tools to replace or augment Rails defaults. Here's some documentation for them:

#### Assets

* [Haml](http://haml.info) for views
* [Sass](http://sass-lang.com) for stylesheets

#### Debugging

* [byebug](https://github.com/deivid-rodriguez/byebug) makes it easy to drop into an interactive CLI debugger from anywhere in your code
* [web-console](https://github.com/rails/web-console) lets you drop a browser-based debugger into any Rails view

#### Tests

* [RSpec](https://rspec.info) test framework
* [factory_bot](https://github.com/thoughtbot/factory_bot) replaces static test fixtures with configurable Ruby objects
* [shoulda-matchers](https://github.com/thoughtbot/shoulda-matchers/tree/rails-5) provides useful Rails-specific RSpec matchers
* [Capybara](https://github.com/teamcapybara/capybara) provides a DSL for writing feature specs
* [RuboCop](https://github.com/bbatsov/rubocop) enforces our style guide

### Get set up

In order to work on the app, you'll need the following installed:

* Ruby >= 2.5
* PostgreSQL >= 9.6
* [Heroku CLI](https://devcenter.heroku.com/articles/heroku-cli)

#### Additional Mac requirements

Additionally, Mac users need:

* Xcode, which can be found in the App Store. Xcode provides the C compiler toolchain that is needed to compile several Ruby gems with C extensions. After installing it, launch Xcode at least once and accept its license and let it install its "Additional Components" before continuing.
* libffi, which can be installed using [Homebrew](https://brew.sh) like this:
  ```sh
  brew install libffi && brew link libffi --force
  ```

#### Install Ruby gem dependencies

To get started, ensure that you have the [Bundler](https://bundler.io) Ruby gem installed, so that you can use its `bundle` command to manage the Rails app's Ruby gem dependencies.

```sh
gem install bundler
```

Then, navigate to this Git repository and run `bundle` to install all of the necessary Ruby gem dependencies.

```sh
bundle
```

#### Create databases

Run the following command to create the PostgreSQL databases used by the development and test environments.

```sh
bin/rails db:setup
```

### Run the app

To run the app, use the Heroku CLI's `heroku local` command. It reads `Procfile` to determine how to start the web server, just like a real Heroku app.

```sh
heroku local
```

### Run the tests

To run the full test suite, use `bin/rspec`.

```sh
bin/rspec # Run the full suite
bin/rspec spec/features/example_spec.rb # Run all examples in example_spec.rb
bin/rspec spec/models/poem_spec.rb:69 # Run the example on line 69 of poem_spec.rb
```

Check out `bin/rspec --help` and [RSpec's documentation](http://rspec.info/documentation/3.7/rspec-core/#The_rspec_Command) for more ways to run tests.

### Check your code style

We use [RuboCop](https://github.com/bbatsov/rubocop) to enforce our style guide. Run it to check your code before submitting a pull request or merging to master.

```sh
bin/rubocop
```
