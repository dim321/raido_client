module RaidoClient
  class ClientAPI
    module Partner

      def add_partner_transaction(options = {})
        response = self.class.post("/partners/transactions/#{@partner_api_key}", body: options )
        response.parsed_response
      end

      def get_partner_info
        response = self.class.get("/partners/#{@partner_api_key}")
        response.parsed_response
      end

    end
  end
end