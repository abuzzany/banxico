# Thirdparty gems
require "jsonclient"

# Classes
require "banxico/series/exchange_rate"
require "banxico/api"
require "banxico/result"

# Version
require "banxico/version"

module Banxico
  @api_url = "https://www.banxico.org.mx/SieAPIRest/service/v1/"
  @token = nil
  class Error < StandardError; end
  class << self

    attr_accessor :token,
                  :api_url
  end
end
