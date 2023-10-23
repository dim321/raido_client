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
