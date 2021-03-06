module RaidoClient

  class ClientAPI

    module Connection

      def get(path, options = {})
        request :get, path, options
      end

      def post(path, options = {})
        request :post, path, options
      end

      def put(path, options = {})
        request :put, path, options
      end

      def delete(path, optiond = {})
        request :delete, path, options
      end


      private

      def request(http_method, path, options)
        response = self.class.send(http_method, path, { body: options })
        response.parsed_response
      end

    end

  end

end