
RSpec.describe Banxico::Series::ExchangeRate do
    describe "#for" do
      describe "#pay_expenses" do
        it "returns all the exchange rates for a given date rage" do
          result = described_class.for.pay_expenses(Date.today - 1, Date.today)
          expect(result.success?).to be true
        end
      end
    end
end
