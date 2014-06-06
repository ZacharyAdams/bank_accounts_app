def accounts_arr
  accounts = []
  CSV.foreach('balances.csv', headers: true) do |row|
    accounts << BankAccount.new(row.to_hash)
  end
  accounts
end

def transactions_arr
  transactions = []
  CSV.foreach('bank_data.csv', headers: true) do |row|
    transactions << Transaction.new(row.to_hash)
  end
  transactions
end
