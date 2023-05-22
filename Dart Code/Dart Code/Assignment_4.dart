abstract class Account{
  int accountNumber;
  double balance;

  Account(this.accountNumber,this.balance);

  void deposit(double amount){
    balance += amount;
  }
  void withdraw(double amount);
}

class SavingsAccount extends Account {
  double interestRate;
  SavingsAccount(int accountNumber,double balance,this.interestRate) : super(accountNumber,balance);


  @override
  void withdraw(double amount) {
      balance = balance - amount;
      balance = balance * interestRate;

  }

}
class CurrentAccount extends Account {
  double overdraftLimit;

  CurrentAccount(int accountNumber, double balance, this.overdraftLimit)
      : super(accountNumber, balance);

  @override
  void withdraw(double amount) {
    if (amount <= balance + overdraftLimit) {
      balance -= amount;
    } else {
      print('Insufficient funds');
    }
  }
}

void main(){
  SavingsAccount savingsAccount = SavingsAccount(123456, 1000.0, 0.05);
  savingsAccount.deposit(500.0);
  print('Savings account balance after deposit: ${savingsAccount.balance}');

  savingsAccount.withdraw(200.0);
  print('Savings account balance after withdraw: ${savingsAccount.balance}');

  CurrentAccount currentAccount = CurrentAccount(654321, 2000.0, 1000.0);

  currentAccount.deposit(800.0);
  print('Current account balance after deposit: ${currentAccount.balance}');

  currentAccount.withdraw(3000.0);
  print('Current account balance after withdraw : ${currentAccount.balance}');

  currentAccount.withdraw(2000.0);
  print('Current Account Balance after withdraw : ${currentAccount.balance}');
}