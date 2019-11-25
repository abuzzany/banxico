# Third party gems
require "jsonclient"

# Version
require "banxico/version"

module Banxico
  class Error < StandardError; end
  class << self
    @api_url = nil

    attr_accessor :token,
                  :api_url
  end
end
