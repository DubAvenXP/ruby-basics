class BankAccount
    def initialize
        @amount = 5000
    end

    def amount
        @amount / 100.0
    end

    def status
        # avoid @amount/100.0 or crate other variables
        "Your bank account has a total of #{amount} dollars"
    end
end
