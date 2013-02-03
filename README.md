# VersionBomb

Makes creating flexible version bombs dead simple.

## Installation

Install as usual: `gem install version_bomb` or add `gem 'version_bomb'` to your Gemfile.

## Why

Version bombs are necessary when monkey patching libraries, whether you’re afraid of it breaking in the future, or simply want to get reminded when you upgrade to check if a backport is now included (and your monkey patch removed). VersionBomb makes it easy to create flexible version bombs, and makes it easy to find all of them in your app (just search for “VersionBomb”!).

## Usage

First, `require 'version_bomb'`, then add a bomb:

```ruby
VersionBomb.bomb 'Rails', Rails::VERSION::STRING, '>= 3.2.1'
```

The requirement specified accepts anything RubyGems does—which is the same as Bundler’s scheme.

You can also optionally specify a custom message:

```ruby
VersionBomb.bomb 'Rails', Rails::VERSION::STRING, '>= 3.2.1', 'Check if pull request #42 has been merged'
```

## Contributing

Contributions are welcome. Please be sure that your pull requests are atomic so they can be considered and accepted separately.

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Credits & License

Copyright © 2013 J. Andrew Marshall. License is available in the LICENSE file.
