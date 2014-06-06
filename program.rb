require 'csv'
require 'pry'
require_relative 'classes'
require_relative 'helper_methods'

accounts = accounts_arr
transactions = transactions_arr

accounts.each do |account|
  puts "==== #{account.name} ===="
  puts "Starting Balance: $#{account.starting_balance}"
  puts "Ending Balance: $#{account.current_balance(transactions)}\n\n"
  account.print_transactions(transactions)
  puts "========\n\n"
end


# def print_trans(account)
  # transactions.each do |trans|
  #   if trans.account == account.name
      # puts "$#{trans.amount}   #{trans.dep_or_with}" +
      # "  #{trans.date} - #{trans.description}"
  #     end
  #   end
  # end
