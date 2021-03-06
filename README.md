# Burger Finder

A CLI application to help you find the best burger joints in the Baltimore area. Yum!

🍔🍔🍔🍔🍔

## About

I like burgers. And I like to know where the best ones are in my area at all times. So, I build an application to do that.

My blog post [CLI Have No Idea What I’m Doing: Planning (and Building) My First CLI Application](https://shannoncrabill.com/blog/cli-application-planning/) goes into detail on the steps I took to make this happen.

***

## Installation

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/burger_finder`. To experiment with that code, run `bin/console` for an interactive prompt.

Add this line to your application's Gemfile:

```ruby
gem 'burger_finder'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install burger_finder

## Usage

To start the program run:

```ruby
ruby bin/start
```

Or

```ruby
./bin/start
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake burger_finder`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports are welcome on GitHub at https://github.com/scrabill/burger_finder. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## To Do

- Implement an API for restaurant data
- Display data based on user input for location (city or zip code)
- ~Better logic for edge cases (invalid input, etc)~
- Error handling
- Save restaurant details into object after first call
- Update user agent and URL for initial scrap
- [Colorize](https://github.com/fazibear/colorize)
- Add emojis

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Install project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/scrabill/install/blob/master/CODE_OF_CONDUCT.md).
