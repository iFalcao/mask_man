# MaskMan

> Abstraction of the most common regular expressions (Regex) for your Ruby application. Validate and convert your strings fast and easy with Maskman. See **Usage** for more instructions and examples.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mask_man'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mask_man

## Usage

We currently have 2 modules: `Convert` and `Validate`, let's see a example for each.

If you want to remove all special characters from your string, that's fairly simple with MaskMan, just do as below:

```ruby
require MaskMan

MaskMan::Convert.rm_special(your_string_here)
```

But in case you want to check the presence of a special character within your string, you can use:

```ruby
require MaskMan

MaskMan::Validate.has_special_chars?(your_string_here)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

Be sure to create the test cases for your new feature, we are using [RSpec](https://github.com/rspec/rspec-rails) to accomplish this.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/iFalcao/mask_man.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
