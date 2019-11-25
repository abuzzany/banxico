# frozen_string_literal: true

# Esta clase se encarga de conectarse al API de banxico para descarga de
# informacion (https://www.banxico.org.mx/SieAPIRest/service/v1/).
class Banxico::Api

  attr_accessor :http

  def initialize
    @http = JSONClient.new
    http.base_url = Banxico.api_url
    http.default_header = { "Bmx-Token": Banxico.token }
  end
end
