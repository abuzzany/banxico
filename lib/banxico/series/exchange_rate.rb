module Banxico
  module Series
    class ExchangeRate
      def self.for
        new
      end

      def pay_expenses(start_date, end_date)
        api = Banxico::Api.new
        result = Banxico::Result.new
        request_url = "series/SF60653/datos/#{start_date.strftime('%Y-%m-%d')}/#{end_date.strftime('%Y-%m-%d')}"
        response = api.http.get(request_url)
        result.body = response.body["bmx"]["series"][0]["datos"]
        result.toggle_success! unless response.code == 200
        result
      end
    end
  end
end
