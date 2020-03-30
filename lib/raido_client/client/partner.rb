module RaidoClient
  class ClientAPI
    module Partner

      def add_partner_transaction(options = {})
        post("/partners/transactions/#{@partner_api_key}", options)
      end

      def add_partner(options = {})
        post("/partners", options)
      end

      def add_user_phone_for_tx(options = {})
        put("/partners/user/#{@partner_api_key}", options)
      end

      def get_txs_for_partner
        get("/partners/transactions/#{@partner_api_key}")
      end

      def get_partner_info_by_tx(tx)
        get("/partners/info/#{tx}")
      end

      def get_partner_info
        get("/partners/#{@partner_api_key}")
      end

      def get_partner_transaction(options = {})
        get("/partners/transactions/#{@partner_api_key}", options)
      end

      def get_partners_list
        get("/partners")
      end

      def login_user_for_partner_tx(options = {})
        post("/partners/login/#{@partner_api_key}", options)
      end

      def update_partner_info(options = {})
        put("/partners/#{@partner_api_key}", options)
      end

    end
  end
end