class Main {
  public static void main(String[] args) {
    CashPayment cash = new CashPayment("Soles");
    CreditCardPayment credit = new CreditCardPayment("1234-5678-9101-2345");

    cash.processPayment(100);
    credit.processPayment(100);
  }
}
