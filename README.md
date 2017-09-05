# StringExt

[![Gem Version](https://badge.fury.io/rb/string_ext.svg)](https://rubygems.org/gems/string_ext)
[![Build Status](https://travis-ci.org/gabynaiman/string_ext.svg?branch=master)](https://travis-ci.org/gabynaiman/string_ext)
[![Coverage Status](https://coveralls.io/repos/github/gabynaiman/string_ext/badge.svg?branch=master)](https://coveralls.io/github/gabynaiman/string_ext?branch=master)
[![Code Climate](https://codeclimate.com/github/gabynaiman/string_ext.svg)](https://codeclimate.com/github/gabynaiman/string_ext)
[![Dependency Status](https://gemnasium.com/gabynaiman/string_ext.svg)](https://gemnasium.com/gabynaiman/string_ext)

String utils for accented and special chars

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'string_ext'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install string_ext

## Usage

```ruby
StringExt.downcase 'ÁÉÍÓÚÑ' # => 'áéíóúñ'
StringExt.upcase 'áéíóúñ' # => 'ÁÉÍÓÚÑ'
StringExt.unaccented 'áÉíÓú' # => 'aEiOu'
```

```ruby
include StringExt
downcase 'ÁÉÍÓÚÑ' # => 'áéíóúñ'
upcase 'áéíóúñ' # => 'ÁÉÍÓÚÑ'
unaccented 'áÉíÓú' # => 'aEiOu'
```

```ruby
module MyModule
    extend StringExt
    downcase 'ÁÉÍÓÚÑ' # => 'áéíóúñ'
    upcase 'áéíóúñ' # => 'ÁÉÍÓÚÑ'
    unaccented 'áÉíÓú' # => 'aEiOu'
end
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/gabynaiman/string_ext.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
