class Account
	attr_reader :balance
	def initialize(pin)
		@balance = 0
		@pin = pin
	end

	def credit(pin, amount)
		@balance += amount if check_pin(pin)
		puts "$#{amount} added to account."
		display_balance(pin)
	end

	def debit(pin, amount)
		if check_pin(pin)
			if amount > @balance
				puts "Insufficient funds."
			else
				@balance -= amount
				puts "$#{amount} withdrawn from account."
				display_balance(pin)
			end
		end
	end

	private

	def check_pin(pin)
		if pin == @pin
			true
		else
			puts "Incorrect PIN"
			false
		end
	end

	def display_balance(pin)
		puts "Current balance is $#{@balance}." if check_pin(pin)
	end

end

class CheckingAccount < Account
	def initialize(pin)
		super(pin)
		puts "New checking account activated."
	end

end

class SavingsAccount < Account
	def initialize(pin)
		super(pin)
		puts "New savings account activated."
	end

end

#Test Cases
if __FILE__ == $PROGRAM_NAME
	checking = CheckingAccount.new(1234)
	savings = SavingsAccount.new(5678)

	checking.credit(1234, 200)
	checking.debit(1234, 100)
	savings.credit(5678, 400)
	savings.debit(5678, 500)
	checking.debit(5678, 300)

	puts "Checking balance is $#{checking.balance}, and savings balance is $#{savings.balance}."
end