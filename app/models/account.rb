class Account < ApplicationRecord
    has_many :transactions
    validates :name, :balance, presence: true

    def update_balance(transaction) 
        if transaction.kind === 'deposit'
            self.balance = self.balance + transaction.amount
            self.save
        elsif transaction.kind === 'withdraw'
            if self.balance >= transaction.amount 
            self.balance = self.balance - transaction.amount
            self.save
            else  
                return 'you dont have the money'
        
            end
        end
    end 




    def update_balance_on_delete(transaction) 
        if transaction.kind === 'deposit'
            if self.balance >= transaction.amount
            self.balance = self.balance - transaction.amount
            self.save
            else  
                return 'you dont have the money'
    
            end
        elsif transaction.kind === 'withdraw'
            self.balance = self.balance + transaction.amount
            self.save
        end
    end 
end
