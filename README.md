#Bank Account

![Alt Text]https://travis-ci.org/Simba14/bank-tech-test.svg?branch=master

Simple banking application written in Ruby, used as a practice tech test for interview preparation.

The key concepts that I attempted to adhere to were:
* Object-oriented design
* Test-driven development
* Concise methods
* Seperation of concerns

### User stories
```
As a User
So that I can store my money safely
I need to deposit it into my account

As a User
So that I can purchase goods / services
I need to be able to withdraw money from my account

As a User
So that I know how much money I have deposited
I need to be able to view my balance

As a User
So that I can keep track of my finances
I need to be able to view my account history
```


### Acceptance criteria

**Given** a client makes a deposit of 1000 on 10-01-2012
**And** a deposit of 2000 on 13-01-2012
**And** a withdrawal of 500 on 14-01-2012
**When** she prints her bank statement
**Then** she would see

```
date || credit || debit || balance
14/01/2012 || || 500.00 || 2500.00
13/01/2012 || 2000.00 || || 3000.00
10/01/2012 || 1000.00 || || 1000.00
```

### Requirements

* You should be able to interact with the your code via a REPL like IRB or the JavaScript console.  (You don't need to implement a command line interface that takes input from STDIN.)
* Deposits, withdrawal.
* Account statement (date, amount, balance) printing.
* Data can be kept in memory (it doesn't need to be stored to a database or anything).
