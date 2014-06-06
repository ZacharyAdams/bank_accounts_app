class BankAccount
  attr_reader :name, :starting_balance

  def initialize(attributes)
    @name = attributes["Account"]
    @starting_balance = attributes["Balance"].to_i
  end

  def print_transactions(transactions_array)
    transactions_array.each do |trans|
      if trans.account == @name
        puts "$#{trans.amount.delete('-')}   #{trans.dep_or_with}" +
             "  #{trans.date} - #{trans.description}"
      end
    end
  end

  def current_balance(transactions_array)
    @current_balance = @starting_balance
    transactions_array.each do |trans|
      if trans.account == @name
        if trans.amount.start_with?('-')
          @current_balance -= trans.amount.to_i
        else
          @current_balance += trans.amount.to_i
        end
      end
    end
    @current_balance
  end

end

class Transaction
  attr_reader :date, :amount, :description, :account, :dep_or_with

  def initialize(attributes)
    @date = attributes["Date"]
    @amount = attributes["Amount"]
    @description = attributes["Description"]
    @account = attributes["Account"]
    if @amount.to_i > 0
      @dep_or_with = "DEPOSIT"
    else
      @dep_or_with = "WITHDRAWAL"
    end
  end

end
