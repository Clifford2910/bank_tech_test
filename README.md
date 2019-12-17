# Bank Tech Test

## Index
* [Installation](#Install)
* [Rspec Tests](#Rspec)
* [Usage](#Usage)

## Challenege

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).

### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see
```
date       || credit || debit   || balance
14/01/2012 ||        || 500.00  || 2500.00
13/01/2012 || 2000.00||         || 3000.00
10/01/2012 || 1000.00||         || 1000.00
```

### My Code:
* My approach was to use TDD to guide my code and refactor when i began to repeat myself. I also used rubocop and simplecov to ensure good code quality.
* My plan for structure was to have two classes, one for handling the money logic and the other for handling and formatting the output data.

## <a name="Install">Installation</a>
* To clone the repo
```shell
$ git clone https://github.com/Clifford2910/bank_tech_test.git
$ cd bank_tech_test
$ bundle
```

## <a name="Rspec">Rspec Tests</a>
```shell
$ cd bank_tech_test
$ rspec
```

## <a name="Usage">Usage</a>
irb
```ruby
$ require './lib/account.rb'
$ account = Account.new
$ account.deposit(1000)
$ account.deposit(1000)
$ account.withdraw(500)
$ puts account.statement
```
* Output showing what my app looks like
```
Makerss-MacBook-Pro-8:bank_tech_test student$ irb
2.6.3 :001 > require './lib/account.rb'
 => true
2.6.3 :002 > account = Account.new
 => #<Account:0x00007f9297963148 @balance=0, @display=#<Display:0x00007f9297963120 @activity=[]>>
2.6.3 :003 > account.deposit(1000)
 => ["17/12/2019 || 1000.00 || || 1000.00"]
2.6.3 :004 > account.deposit(1000)
 => ["17/12/2019 || 1000.00 || || 2000.00", "17/12/2019 || 1000.00 || || 1000.00"]
2.6.3 :005 > account.withdraw(500)
 => ["17/12/2019 || || 500.00 || 1500.00", "17/12/2019 || 1000.00 || || 2000.00", "17/12/2019 || 1000.00 || || 1000.00"]
2.6.3 :006 > puts account.statement
date || credit || debit || balance
17/12/2019 || || 500.00 || 1500.00
17/12/2019 || 1000.00 || || 2000.00
17/12/2019 || 1000.00 || || 1000.00
 => nil
2.6.3 :007 >
```
