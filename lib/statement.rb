require_relative './account.rb'

class Statement

  def view_statement(transaction_history)
    puts 'date || credit || debit || balance'
    transaction_history.reverse_each do |row|
      puts "#{row[:date]} || #{row[:credit]} || #{row[:debit]} || #{row[:balance]}" 
    end
  end

end
