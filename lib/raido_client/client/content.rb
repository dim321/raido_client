module RaidoClient
    class ClientAPI
      module Content

        def get_currencies_list
          get("/currencies")
        end

      end
    end
  end