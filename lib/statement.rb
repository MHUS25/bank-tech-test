require_relative './transaction.rb'

# responsible for generating statements
class Statement
  def generate_statement(transaction_history)
    ['date || credit || debit || balance'] +
      transaction_history.reverse.map do |item|
        [
          item[:date],
          print_float(item[:credit]),
          print_float(item[:debit]),
          print_float(item[:balance])
        ].join(' || ')
      end
  end

  def view_statement(transaction_history)
    generate_statement(transaction_history).join("\n")
  end

  private

  def print_float(value)
    format('%.2f', value) unless value.nil?
  end
end
