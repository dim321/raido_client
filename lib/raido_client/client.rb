module RaidoClient

  class Client

    def initialize(access_token = nil)
      @access_token = access_token || ENV["RAIDO_ACCESS_TOKEN"]
    end

  end
  
end
