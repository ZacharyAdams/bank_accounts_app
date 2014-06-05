class Bank_account
  attr_reader

def starting_balance
  balance = []
  CSV.foreach('balances.csv' headers: true) do |row|
    balance << row.to_hash
  end
  balance
end

def current_balance

end

def summary

end

end
