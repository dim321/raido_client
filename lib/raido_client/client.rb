require "raido_client/client/partner"
require "raido_client/client/content"
module RaidoClient

  class ClientAPI
    include HTTParty
    include RaidoClient::ClientAPI::Partner
    include RaidoClient::ClientAPI::Content
    base_uri "https://merchant-datacenter.raidofinance.eu"
    format :json

    def initialize(partner_api_key = nil)
      @partner_api_key ||= ENV["RAIDO_API_KEY"]
    end

  end

end
