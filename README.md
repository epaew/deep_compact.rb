# deep_compact.rb
Define `Array#deep_compact` and `Hash#deep_compact` which apply `#compact` recursively.

## Requirements
Ruby: 2.6 or higher

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'deep_compact'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install deep_compact

## Usage
```ruby
require 'deep_compact'

using DeepCompact

array = [nil, :a, { a: :a, nil: nil }]
pp array.deep_compact #=> [:a, {:a=>:a}]

hash = { a: :a, nil: nil, array: [nil, :a], hash: { a: :a, nil: nil } }
pp hash.deep_compact #=> {:a=>:a, :array=>[:a], :hash=>{:a=>:a}}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/epaew/deep_compact.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
