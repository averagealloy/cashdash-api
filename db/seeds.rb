account = Account.create(name: 'that smhoney spot', balance: 100000)

transaction = Transaction.create(account_id: 1 , amount: 10000, kind: "deposit", date: Date.today, about:'get paidizzled')

transaction_two = Transaction.create(account_id: 1 , amount: 10000, kind: "withdraw", date: Date.today, about:'gettin unpaidizzled')