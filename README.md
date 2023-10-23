# Raido Merchant API v1.0.0 Ruby wrapper.

A Ruby gem which helps to communicate with <a href="https://merchant-datacenter.raidofinance.eu/api/#api-Partner"> Raido Merchant API v.1.0.0.</a> <a href="https://raidofinance.eu/">Raido Finance</a> is a market exchange site serving those trading with crypto currencies, such as Bitcoin, Ethereum, support purchase/sale of cryptocurrency using bank cards and bank transfers in Euros through SEPA.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'raido_client'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install raido_client

And require it in your controller:

```ruby
  require 'raido_client'
```

## Usage

First of all, initialize client:

    $ client = RaidoClient::ClientAPI.new("RAIDO_PARTNER_API_TOKEN")

And then talk to API:

    $ client.get_partner_info

Add Partner transaction method:

    $ fiat_to_eth = {
    $                "in_currency_id":   "5",
    $                "out_currency_id":  "2",
    $                "volume":           "400",
    $                "wallet":           "32dmJ9g1ity8cihrXXXXX8uZivXkcDWCvS",
    $                "notification_url": "http://wallet.lvh.me",
    $                "return_url":       "http://wallet.lvh.me"
    $               }

    $ client.add_partner_transaction(fiat_to_eth)

For more information, please consult the <a href="https://merchant-datacenter.raidofinance.eu/api/#api-Partner">Raido Merchant API official documentation</a>

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dim321/raido_client. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the RaidoClient project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/raido_client/blob/master/CODE_OF_CONDUCT.md).
