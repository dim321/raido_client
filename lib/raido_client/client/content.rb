module RaidoClient
    class ClientAPI
      module Content

        def get_currencies_list
            url = "/currencies"
            response = self.class.get(url)
            response.parsed_response
        end
  
      end
    end
  end