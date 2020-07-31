# Omniauth::Segment

[![Gem Version](https://badge.fury.io/rb/omniauth-segment.svg)](https://badge.fury.io/rb/omniauth-segment)

This gem contains the Segment strategy for OmniAuth.

For more information about the Segment Api authentication: https://segment.com/docs/partners/enable-with-segment/

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'omniauth-segment'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-segment

## Usage

If you are using rails, you need to add the gem to your Gemfile:

```ruby
gem 'omniauth-segment'
```
You can pull them in directly from github e.g.:

```ruby
gem "omniauth-segment", :git => "git://github.com/ferrucc-io/omniauth-segment.git"
```

Add provider in omniauth.rb along with CLIENT_ID and CLIENT_SECRET

e.g.
```ruby
provider :segment, SEGMENT_CLIENT_ID, SEGMENT_CLIENT_SECRET, callback_url: SEGMENT_CALLBACK_URL
```

Obtain your CLIENT_ID/CLIENT_SECRET by registering your app on: https://segment.com/partners/integration/

After you have the gem running and the configuration is done, you can get to the follow url to log the user in:

http://localhost:3000/auth/segment

Now just follow the README at: https://github.com/omniauth/omniauth

### Questions
For any question, fell free to send me a tweet [@0xferruccio](https://twitter.com/0xferruccio)

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ferrucc-io/omniauth-segment.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
