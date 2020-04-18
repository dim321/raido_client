module RaidoClient
  class ClientAPI
    module Partner

      # Возвращает итоговую сумму без учета комиссий банка и Райдо
      def add_partner_transaction(options = {})
        post("/partners/transactions/#{@partner_api_key}", options)
      end

      # Возвращает итоговую сумму с учетом комиссий банка и Райдо
      def add_partner_transaction_calc(options = {})
        post("/partners/transactions/calc/#{@partner_api_key}", options)
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

    end
  end
end