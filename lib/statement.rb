require_relative './account.rb'

class Statement
  def view_statement(transaction_history)
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

private

  def print_float(value)
    format('%.2f', value) unless value.nil?
  end
end
